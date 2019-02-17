    <div class="pc row">
        <div class="col-xs-8 col-xs-push-2">
            <h1> Ajouter un article
            </h1>
            <form method="post" action="#">
                <div class="form-group">
                    <label for="title">Titre </label>
                    <input class ="form-control" type="text" name="title" />
                </div>
                <div class="form-group">
                    <label for="chapo">Chapô</label>
                    <input class ="form-control" id = 'chapo' type="text" name="chapo" />
                </div>
                <div class="form-group">
                    <label for="article">Contenu </label>
                    <textarea class ="form-control" id="article" name="article"></textarea>
                </div>
                <div class="form-group">
                    <fieldset>
                        <legend>Catégorie</legend>
                        <?php
                        $db  = Database::connect();
                        $req = $db-> query('SELECT * FROM T_categories');
                        while ($row = $req -> fetch()){
                            $checkbox =  '<input  type="checkbox" id="coding" name="categories[]" value="'.$row['CATLIBELLE'].'">';
                            $checkbox .= '<label for="' .$row['CATLIBELLE'] .  '" style = "width = 20px !important;"> ' . $row['CATLIBELLE']  . '</label>';
                            echo $checkbox;
                        }
                        Database::disconnect();
                        ?>
                    </fieldset>
                </div>
                <div class="form-group">
                    <input type="submit" value="Envoyer" name="update" class="btn btn-info btn-lg">
                    <input type="reset" value="Effacer" class="btn btn-warning btn-lg">
                </div>
            </form>
        </div>
    </div>