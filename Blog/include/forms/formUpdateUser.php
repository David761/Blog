<div class="pc row">
    <div class="col-sm-8 col-sm-push-2">
        <h1><strong>Modifier un utilisateur</strong></h1>
        <br>
        <div class="text-danger"><?php echo $userError;?></div>
        <form class="form" action="#" role="form" method="post">
            <div class="form-group">
                <label for="name">Nom
                    <input style="width: 100%;" type="text" class="form-control" id="name" name="name" value="<?php echo $name;?>">
                    <div class="text-danger"><?php echo $nameError;?></div>
            </div>
            <div class="form-group">
                <label for="prenom">Prenom
                    <input type="text" class="form-control" id="prenom" name="prenom" placeholder="prenom" value="<?php echo $firstname;?>">
                    <div class="text-danger"><?php echo $firstnameError;?></div>
            </div>
            <div class="form-group">
                <label for="pseudo">Pseudo
                    <input type="text" class="form-control" id="pseudo" name="pseudo" placeholder="pseudo" value="<?php echo $pseudo;?>">
                    <div class="text-danger"><?php echo $pseudoError;?></div>
            </div>
            <div class="form-group">
                <label for="prenom">E-mail
                    <input type="mail" class="form-control" id="mail" name="mail" placeholder="mail" value="<?php echo $mail;?>">
                    <div class="text-danger"><?php echo $mailError;?></div>
            </div>
            <div class="form-group">
                <fieldset>
                    <legend>Rôle</legend>
                    <select name = "role" class="form-group">
                        <?php
                        $db  = Database::connect();
                        $req = $db-> query('SELECT * FROM T_roles');
                        while ($option = $req -> fetch()){
                            $select = '<option value="'. $option['ID_ROLE'].'">'. $option['ID_ROLE'].' - '. $option['ROLEDESI'].' </option>';
                            echo $select;
                        }
                         Database::disconnect();
                        ?>
                    </select>
                </fieldset>
            </div>
            <div class="form-actions">
                <input type="submit" name ="updateUser" class="btn btn-success" value="Modifier">
                <a class="btn btn-primary" href="index.php"><div class="glyphicon glyphicon-arrow-left"></div> Retour</a>
            </div>
        </form>
    </div>
</div>
