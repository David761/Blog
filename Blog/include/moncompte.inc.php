
    <div class="pc row">
        <div class="col-sm-9" style="box-shadow: 1px 0 0 black">
            <h1>Mon compte</h1>
            <?php
                if(isset($_SESSION['auth'])){
                    if(session_status() == PHP_SESSION_NONE){
                        session_start();
                    }
//                    $welcome .= " Nombre de visites = " . $_COOKIE['visite'];
                    $nom     = $_SESSION['auth']['USERNAME'];
                    $prenom  = $_SESSION['auth']['USERFNAME'];
                    $mail    = $_SESSION['auth']['USERMAIL'];
                    $pseudo  = $_SESSION['auth']['PSEUDO'];
                    $dateins = $_SESSION['auth']['USERDATEINS'];
                    $id_user = $_SESSION['auth']['ID_USER'];


                } else {
                    echo '<script>redirection("index.php?page=default")</script>';
                }
            ?>
            <table class="account_table no-style" style="width:100%">
                <tbody>
                    <tr class="cat">
                        <td class="lbl" colspan="2" style="text-align: left; background-color: #ccc;">Avatar</td>
                        <td style="text-align: left; background-color: #ccc;">
                            <a class="edit-item" href="/account/update_avatar.php"><i class="icon-pencil"></i><div class="tooltip">Modifier</div></a>				</td>
                    </tr>
                    <tr>
                        <td class="lbl avatar" colspan="3">Vous n'avez pas d'avatar</td>	</tr>
                    <tr class="cat">
                        <td class="lbl" colspan="3" style="text-align: left; background-color: #ccc;">Informations personnelles</td>
                    </tr>
                    </tr>
                        <td class="lbl">Nom&nbsp;</td><td><?= $nom ?></td>
                        <td></td>	</tr>
                    </tr>
                    <tr>
                        <td class="lbl">Pseudo &nbsp;</td><td><?= $pseudo ?></td>
                        <td><a class="edit-item" href="/mon-compte_changer-mon-pseudo"><i class="icon-pencil"></i><div class="tooltip">Modifier</div></a></td>
                    </tr>
                    <tr>
                        <td class="lbl">Prénom&nbsp;</td><td><?= $prenom ?></td>
                        <td></td>	</tr>
                    <tr>
                    <tr>
                        <td class="lbl">Email&nbsp;</td><td><?= $mail ?></td>
                        <td><a class="edit-item" href="/account/update_email.php"><i class="icon-pencil"></i><div class="tooltip">Modifier</div></a></td>

                    <tr>
                        <td class="lbl">Date de création du compte</td>
                        <td><?= $dateins ?>		</td>
                        <td></td>
                    </tr>
                </tbody>
            </table>
            <br>
            <br>
            <table class="no-style link-button" width="100%">
                <tbody>
                    <tr>
                        <td width="33%"><div class="btn btn-default"><a href="index.php?page=changemdp">Changer de mot de passe</a></div></td>
                        <td width="33%"></td>
                        <td width="33%"><div class="btn btn-default"><a href="index.php?page=delete_user&amp;id=<?= $id_user ?>">Supprimer mon compte</a></div></td>
                    </tr>
                </tbody>
            </table>
        </div>
        <?php include_once './include/static/aside.php'?>

    </div>