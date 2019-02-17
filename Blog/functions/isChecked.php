<?php
/**
 * Created by PhpStorm.
 * User: alili
 * Date: 24/01/2018
 * Time: 18:09
 */
function isChecked($category, $idarticle , $db){

    $req = $db -> prepare('SELECT * FROM t_categories LEFT JOIN t_categories_has_t_articles ON ID_CATEGORIE = T_CATEGORIES_ID_CATEGORIE WHERE T_ARTICLES_ID_ARTICLE = ? AND CATLIBELLE = ?');
    $req -> execute([$idarticle,$category]);
    $res = $req-> fetch();
    if($res){
        $option = $category .'" checked>';
    }else{
        $option = $category . '">';
    }
    return $option ;
}
