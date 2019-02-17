<?php
    if(!empty($_POST)){
        if(!empty($_POST['title']) && !empty($_POST['article'])){
            $titre = $_POST['title'];
            $chapo = $_POST['chapo'];
            $categories = $_POST['categories'];
            $article = htmlentities($_POST['article']);
            $pdo = Database::connect();
            $req = $pdo -> prepare('INSERT into t_articles(ARTTITRE , ARTCHAPO, ARTCONTENU, ARTDATE) VALUES(?,?,?,?)');
            $req -> execute([$titre ,$chapo, $article,date('Y-m-d H-i-s')]);
            $id_article = $pdo -> lastInsertId();
            $user_id   = $_SESSION['auth']['ID_USER'];
            $user_role = $_SESSION['auth']['T_ROLES_ID_ROLE'];
            $stmt4     = $pdo -> prepare('INSERT INTO t_articles_has_t_users (T_ARTICLES_ID_ARTICLE ,T_USERS_ID_USER ,T_USERS_T_ROLES_ID_ROLE) VALUES (?,?,?)');
            $stmt4     -> execute([$id_article, $user_id,$user_role]);
            foreach ($categories as $category){
                $sql = $pdo -> prepare('INSERT into t_categories_has_t_articles (t_categories_id_categorie, t_articles_id_article) VALUES(?,?)');
                $id_category = findIdCategorie($category,$pdo);
                $sql -> execute([$id_category,$id_article]);
            }
            $_SESSION['flash']['success'] = 'Article ajouté';
            echo "<script>redirection(\"index.php?page=view&id=$id_article\")</script>";
            Database::disconnect();
        }else{
            $_SESSION['flash']['danger'] = 'Veuillez vérifier les données saisies';
        }

    }
    include ('./include/forms/formArticle.php');