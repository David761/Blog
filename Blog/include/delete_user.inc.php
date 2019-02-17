<?php
if(isset($_GET['id'])){
    $id = checkInput($_GET['id']);

    if(isset($_POST['delete_user'])){
        $id = checkInput($_POST['id']);
        $db = Database::connect();
        $statement = $db->prepare("DELETE FROM t_users WHERE ID_USER = ?");
        $statement->execute(array($id));

        Database::disconnect();
        echo "<script>redirection(\"index.php?page=adminusers\");</script>";
    }
}

?>

<div class="pc row">
    <h1><strong>Supprimer ce compte</strong></h1>
    <br>
    <form class="form" action="#" role="form" method="post">
        <input type="hidden" name="id" value="<?php
        if(!empty($_GET['id'])){
            $id = checkInput($_GET['id']);
            echo $id;
        }?>"/>
        <p class="alert alert-warning">Etes vous sur de vouloir supprimer ?</p>
        <div class="form-actions">
            <input name = "delete_user" type="submit" class="btn btn-warning" value="Oui">
            <a class="btn btn-default" href="index.php">Non</a>
        </div>
    </form>
</div>
