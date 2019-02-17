<?php
/**
 * Created by PhpStorm.
 * User: alili
 * Date: 24/01/2018
 * Time: 18:08
 */
function findIdCategorie($category, $pdo){
    $req = $pdo -> prepare('SELECT ID_CATEGORIE FROM  t_categories  WHERE CATLIBELLE = ?');
    $req -> execute([$category]);
    $row = $req -> fetch();
    return $row['ID_CATEGORIE'];
}
