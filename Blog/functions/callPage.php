<?php
/**
 * Created by PhpStorm.
 * User: alili
 * Date: 24/01/2018
 * Time: 18:05
 */
function callPage() {
    if (isset($_GET['page'])) {
        if  ($_GET['page'] == "")
            $page = "accueil";
        else
            $page = $_GET['page'];
    }
    else {
        $page = "accueil";
    }
    $page = "./include/" . $page . ".inc.php";
    $incFiles = glob("./include/*.inc.php");
    if (in_array($page, $incFiles)) {
        include($page);
    }
    else {
        include("./include/default.inc.php");
    }
}