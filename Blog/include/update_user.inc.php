<?php

if(isset($_GET['id'])){

    $id = checkInput($_GET['id']);
    $nameError = $firstnameError = $pseudoError = $mailError = $name = $firstname = $pseudo = $mail = $isRelated = $userError = "";

    if(isset($_POST['updateUser'])){
        $name      = $_POST['name'];
        $firstname = $_POST['prenom'];
        $mail      = $_POST['mail'];
        $pseudo    = $_POST['pseudo'];
        $role      = $_POST['role'];
        $isSuccess = true ;
        $isRelated = false;

        if(empty($pseudo)){
            $pseudoError = 'Ce champ ne peut pas être vide';
            $isSuccess = false;
        }

        if(empty($mail)){
            $mailError = 'Ce champ ne peut pas être vide';
            $isSuccess = false;
        }

        $db = Database::connect();
        $sq = $db -> prepare('SELECT * FROM t_users WHERE USERMAIL = ? AND PSEUDO = ? AND T_ROLES_ID_ROLE = ?');
        $sq -> execute([$mail,$pseudo,$role]);
        $user = $sq -> fetch();
        if ($user){
            $isRelated = true ;
            $isSuccess = false;
            $userError = 'Rôle déja existant !';
        }
        if($isSuccess && !$isRelated){
        // -- Push de l'utilisateur
            $sql = $db -> prepare('INSERT into t_users (username, userfname, pseudo ,usermail, USERDATEINS, T_ROLES_ID_ROLE ) VALUES(?,?,?,?,?,?)');
            $sql -> execute(array($name,$firstname,$pseudo, $mail, date('Y-m-d H-m-s'),$role));
            echo '<script>redirection("index.php?page=adminusers")</script> ';
            Database::disconnect();
        }  // -- ./Success

    }else {
        $pdo       = Database::connect();
        $sql       = $pdo -> prepare('SELECT * FROM t_users WHERE ID_USER = ?');
        $sql       -> execute([$id]);
        $user      = $sql -> fetch() ;
        $name      = $user['USERNAME'];
        $firstname = $user['USERFNAME'];
        $mail      = $user['USERMAIL'];
        $pseudo    = $user['PSEUDO'];
        $role      = $user['T_ROLES_ID_ROLE'];
        Database::disconnect();
    }
    include './include/forms/formUpdateUser.php';
}
