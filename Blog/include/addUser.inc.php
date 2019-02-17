<?php
    if(isset($_POST['Adduser'])){

        if (isset($_POST['pseudo']) && isset($_POST['password'])){
            $tabErrors = [];
            $pseudo   = $_POST['pseudo'];
            $mail     = $_POST['mail'];
            $password = $_POST['password'];
            $role = $_POST['role'];

            if(!empty($_POST['mail']) && filter_var($_POST['mail'],FILTER_VALIDATE_EMAIL)){

                $mdp = sha1($password);
                $connexion = Database::connect();
                $sql = $connexion -> prepare('INSERT into t_users ( pseudo ,usermail ,userpassword, USERDATEINS, T_ROLES_ID_ROLE ) VALUES(?,?,?,?,?)');
                $sql -> execute(array($pseudo, $mail,$mdp, date('Y-m-d H-m-s'),$role));
                $success = "<div class='alert alert-success'>Utilisateur ajouté</div>";
                Database::disconnect();
            }else{
                $success = "<div class='alert alert-danger'>Veuillez vérifier les informations saisies</div>";
            }

        }else{
        $success = "<div class='alert alert-danger'>Veuillez vérifier les informations saisies</div>";
        }
    }

    include "./include/forms/formAddUser.php";

