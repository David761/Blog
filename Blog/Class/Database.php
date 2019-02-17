<?php


/**
 * Created by PhpStorm.
 * User: admin
 * Date: 23/01/2018
 * Time: 10:27
 */

class Database
{
    private $dbHost ;
    private $dbName ;
    private $dbUsername ;
    private $dbUserpassword;
    private $pdo;


    public function __construct($dbName,  $dbHost = "localhost", $dbUsername = "root", $dbUserpassword = "")
    {
        $this -> dbName         = $dbName;
        $this -> dbHost         = $dbHost;
        $this -> dbUsername     = $dbUsername;
        $this -> dbUserpassword = $dbUserpassword;
    }

    public function getPDO() {
        $pdo = new PDO("mysql:host=localhost;dbname=nfactoryblog",'root','');
        $pdo -> setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
        $this -> pdo = $pdo;
        return $pdo;
    }

    public function query($statement){
        $req = $this -> getPDO() ->query($statement);
        $data = $req -> fetchall();
        return $data;
    }
}