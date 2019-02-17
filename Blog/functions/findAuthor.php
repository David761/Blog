<?php
/**
 * Created by PhpStorm.
 * User: alili
 * Date: 24/01/2018
 * Time: 18:08
 */
function findAuthor($idarticle , $db){
    $req = $db -> prepare('SELECT * FROM `t_users`left join t_articles_has_t_users on ID_USER = t_users_id_user WHERE t_articles_id_article = ?');
    $req -> execute([$idarticle]);
    $row = $req -> fetch();
    return $row['PSEUDO'];
}
