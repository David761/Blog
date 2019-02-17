<?php
/**
 * Created by PhpStorm.
 * User: alili
 * Date: 24/01/2018
 * Time: 18:08
 */    function findRole($idrole, $pdo){
    $req = $pdo -> prepare('SELECT * FROM t_roles WHERE ID_ROLE = ?');
    $req -> execute([$idrole]);
    $row = $req -> fetch();
    return $row['ROLEDESI'] ;
}
