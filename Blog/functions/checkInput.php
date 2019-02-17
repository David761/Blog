<?php
/**
 * Created by PhpStorm.
 * User: alili
 * Date: 24/01/2018
 * Time: 18:09
 */
function checkInput($data)
{
    $data = trim($data);
    $data = stripslashes($data);
    $data = htmlspecialchars($data);
    return $data;
}
