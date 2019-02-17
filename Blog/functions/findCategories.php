<?php
/**
 * Created by PhpStorm.
 * User: alili
 * Date: 24/01/2018
 * Time: 18:07
 */
function findCategories($idarticle, $pdo){
    $req = $pdo -> prepare('SELECT * FROM t_categories LEFT JOIN t_categories_has_t_articles ON ID_CATEGORIE = T_CATEGORIES_ID_CATEGORIE WHERE T_ARTICLES_ID_ARTICLE = ?');
    $req -> execute([$idarticle]);
    $cat = '<ul>';
    while($row = $req -> fetch()){
        $cat .=  "<li>" . $row['CATLIBELLE'] . "</li>"; ;
    };
    $cat .= "</ul>";
    return $cat;
}
