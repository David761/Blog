<div class="pc">
    <h1 style="text-align: center">Ajouter un utilisateur</h1>
    <div class="col-xs-8 col-xs-push-2">
        <?php if (isset($success)) {echo $success;} ?>
        <form action="#" method="post">
            <div class="form-group">
                <input class = "form-control" type="text" name="name" id ="name" placeholder="Nom ">
            </div>
            <div class="form-group">
                <input class = "form-control" type="text" name="prenom" id ="prenom" placeholder="Prenom ">
            </div>
            <div class="form-group">
                <input class = "form-control" type="text" name="pseudo" id ="pseudo" placeholder="Pseudo ">
            </div>
            <div class="form-group">
                <input class = "form-control" type="email" name="mail" id ="mail" placeholder="Adresse mail">
            </div>
            <div class="form-group">
                <input class = "form-control" type="password" name="password" id ="password" placeholder="Mot de passe">
            </div>
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
            <div class="form-group">
                <input type="submit" value="Ajouté" name="Adduser" class="btn btn-info btn-lg">
                <input type="reset" value="Effacer" class="btn btn-warning btn-lg">
            </div>
        </form>
    </div>

</div>