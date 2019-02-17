<?php
class Database
{
    private static $dbHost = "localhost";
    private static $dbName = "nfactoryblog";
    private static $dbUsername = "root";
    private static $dbUserpassword = "";
    private static $connection = null;
    public static $err = null ;
    public static function connect(){

        if(self::$connection == null){
            try {
                self::$connection = new PDO("mysql:host=" . self::$dbHost . ";dbname=" . self::$dbName , self::$dbUsername, self::$dbUserpassword);
                self::$connection -> setAttribute(PDO::ATTR_ERRMODE,PDO::ERRMODE_EXCEPTION);
            }
            catch(PDOException $e){
                self::$err = $e->getMessage();
                return self::$err;
            }
        }
        return self::$connection ;
    }

    public static function disconnect(){
        self::$connection = null;
    }
public static function addLog(){
        if(!empty(self::$err))
        file_put_contents("log.txt",date("[j/m/y H:i:s]")."eeee\r\n".file_get_contents("log.txt"));
    }
}

