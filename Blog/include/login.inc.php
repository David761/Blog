    <?php
    if(!empty($_POST) && !empty($_POST['username']) && !empty($_POST['password'])){

        $password = $_POST['password'];
        $mdp = sha1($password);
        $connexion = Database::connect();
        $req = $connexion ->prepare('SELECT * FROM t_users WHERE (pseudo = :username OR usermail = :username) AND userpassword = :password');
        $req->execute(['username' => $_POST['username'],'password' => $mdp]);
        $user = $req->fetch();

        if($user){
            $_SESSION['auth'] = $user;
            echo ("<script>redirection(\"index.php?page=moncompte\");</script>");
        }else{
            $_SESSION['url'] = "<div class='alert alert-danger'> Veuillez vérifier les coordonnées saisie ! </div>";
        }
    }

    include ('./include/forms/formLogin.php');
//    '

