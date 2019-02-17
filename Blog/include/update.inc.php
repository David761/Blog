<?php

if(isset($_GET['id'])){

    $id = checkInput($_GET['id']);
    $titleError = $chapoError = $articleError = $categoryError = $titre = $chapo = $article =  "";
    if(isset($_POST['update'])){
        $title              = checkInput($_POST['title']);
        $chapo              = checkInput($_POST['Chapo']);
        $article            = checkInput($_POST['article']);
        $isSuccess = true ;

        if(empty($title)){
            $titleError = 'Ce champ ne peut pas être vide';
            $isSuccess = false;
        }

        if(empty($article)){
            $priceError = 'Ce champ ne peut pas être vide';
            $isSuccess = false;
        }

        if($isSuccess){
//          Push de l'article
            $categories = [];
            $db = Database::connect();
            $statement = $db->prepare("UPDATE t_articles set ARTTITRE = ?, ARTCHAPO = ?, ARTCONTENU = ? , ARTDATE = NOW() WHERE ID_ARTICLE = ?");
            $statement -> execute([$title, $chapo, $article, $id]);

//          Gestion des relations entre categories et l'article
            $stmt1 = $db -> query('SELECT * FROM t_categories');
            $res1  = $stmt1 -> fetchAll();
            $tabCategories = [];
            $categories    = $_POST['category'];

            foreach ($res1 as $t_category) {
                array_push($tabCategories, $t_category['CATLIBELLE']);
            }


            for ($i = 0, $size = count($tabCategories); $i < $size ; $i++){
                if (in_array($tabCategories[$i],$categories)){
                    $stmt2  = $db -> prepare('SELECT * FROM t_categories WHERE CATLIBELLE = ?');
                    $stmt2 -> execute([$tabCategories[$i]]);
                    $res2   = $stmt2 -> fetch();
                    $cat_id = $res2['ID_CATEGORIE'];
                    $stmt3  = $db -> prepare('INSERT INTO t_categories_has_t_articles (T_CATEGORIES_ID_CATEGORIE, T_ARTICLES_ID_ARTICLE) VALUES(?,?)');
                    $stmt3  ->execute([$cat_id,$id]);
                }else{
                    $cat_id = findIdCategorie($tabCategories[$i],$db);
                    $statement = $db->prepare("DELETE FROM t_categories_has_t_articles WHERE T_ARTICLES_ID_ARTICLE = ? AND T_CATEGORIES_ID_CATEGORIE = ?");
                    $statement -> execute([$id, $cat_id]);
                }

            }

            // -- Push de la relation article --> author
            $user_id   = $_SESSION['auth']['ID_USER'];
            $user_role = $_SESSION['auth']['T_ROLES_ID_ROLE'];
            $stmt4     = $db -> prepare('INSERT INTO t_articles_has_t_users (T_ARTICLES_ID_ARTICLE ,T_USERS_ID_USER ,T_USERS_T_ROLES_ID_ROLE) VALUES (?,?,?)');
            $stmt4     -> execute([$id, $user_id,$user_role]);


            echo '<script>redirection("index.php?page=view&id='. $id .'")</script> ';

            Database::disconnect();

        }  // -- ./Success

    }else {
        $pdo     = Database::connect();
        $sql     = $pdo -> prepare('SELECT * FROM t_articles WHERE ID_ARTICLE = ?');
        $sql     = $pdo -> prepare('SELECT * FROM t_articles WHERE ID_ARTICLE = ?');
        $sql     -> execute([$id]);
        $item    = $sql -> fetch() ;
        $title   = $item['ARTTITRE'];
        $chapo   = $item['ARTCHAPO'];
        $article = $item['ARTCONTENU'];
    }
include './include/forms/formUdpate.php';
}

