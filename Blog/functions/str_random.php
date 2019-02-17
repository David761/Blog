<?php
/**
 * Created by PhpStorm.
 * User: alili
 * Date: 24/01/2018
 * Time: 18:06
 */
function str_random($length){
    $alphabet = "0123456789azertyuiopqsdfghjklmwxcvbnAZERTYUIOPQSDFGHJKLMWXCVBN";
    return substr(str_shuffle(str_repeat($alphabet, $length)), 0, $length);
}
