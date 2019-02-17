<div class="pc row">

    <div class="col-xs-8 col-xs-push-2">
        <h1>Se connecter </h1>
        <form action="#" method="post">
            <?php
            if(isset($_SESSION['url'],$_POST['username'])){
                echo $_SESSION['url'];
            }
            ?>
            <div class ="form-group">
                <input class='form-control' type = "text" name ="username" placeholder="Votre E-mail ou pseudo">
            </div>
            <div class ="form-group">
                <input class='form-control' type = "password" name = "password" placeholder="Votre Mot-de-passe">
            </div>
            <div class="form-group">
                <input type="submit" value="Connexion" name="formulaire" class="btn btn-info btn-lg">
                <input type="reset" value="Effacer" class="btn btn-warning btn-lg">
            </div>
        </form>
    </div>
</div>