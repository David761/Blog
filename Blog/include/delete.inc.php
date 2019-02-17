<?php

if(isset($_GET['id'])){
    $id = checkInput($_GET['id']);

    if(isset($_POST['delete'])){
        $id = checkInput($_POST['id']);
        $db = Database::connect();
        $statement = $db->prepare("DELETE FROM t_categories_has_t_articles WHERE T_ARTICLES_ID_ARTICLE = ?");
        $statement->execute(array($id));
        $statement3 = $db -> prepare('DELETE FROM t_articles_has_t_users WHERE T_ARTICLES_ID_ARTICLE = ? ');
        $statement3 -> execute([$id]);
        $statement2 = $db->prepare("DELETE FROM t_articles WHERE ID_ARTICLE = ?");
        $statement2 ->execute(array($id));

        Database::disconnect();
        echo "<script>redirection(\"index.php?page=admin\");</script>";
    }
}

?>

<div class="pc row">
    <h1><strong>Supprimer un article</strong></h1>
    <br>
    <form class="form" action="#" role="form" method="post">
        <input type="hidden" name="id" value="<?php
                                                    if(!empty($_GET['id'])){
                                                        $id = checkInput($_GET['id']);
                                                        echo $id;
                                                    }?>"/>
        <p class="alert alert-warning">Etes vous sur de vouloir supprimer ?</p>
        <div class="form-actions">
            <input name = "delete" type="submit" class="btn btn-warning" value="Oui">
            <a class="btn btn-default" href="index.php">Non</a>
        </div>
    </form>
</div>
