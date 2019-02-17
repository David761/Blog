<?php

if(isset($_POST['Addcategory']) ){

    if(!empty($_POST['category'])) {
        $category   = $_POST['category'];
        $connexion = Database::connect();
        $sql = $connexion -> prepare('SELECT CATLIBELLE FROM t_categories Where CATLIBELLE = ?');
        $sql -> execute([$category]);
        $res = $sql -> fetch();
        if ($res){
            $success_cat= "<div class='alert alert-danger'>Catégorie déjâ présente</div>";
        }else{
            $sql = $connexion -> prepare('INSERT into t_categories (CATLIBELLE) VALUES(?)');
            $sql -> execute(array($category));
            $success_cat = "<div class='alert alert-success'>Catégorie ajoutée</div>";
        }
    }
}
include "./include/forms/formAddCategory.php";
