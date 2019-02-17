<div class="pc row" >
    <h1>
        <strong>Gestion des utlisateurs   </strong>
        <a href="index.php?page=addUser" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-plus"></span> Ajouter un utilisateur</a>
    </h1>
    <table class="table table-bordered admin " style="font-family: 'Roboto Condensed'">
        <thead ">
        <tr style="font-weight: bold;">
            <th>ID</th>
            <th>Nom</th>
            <th>Prenom</th>
            <th>Pseudo</th>
            <th>E-mail</th>
            <th>Role</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <?php
        $db = Database::connect();
        $statement = $db->query('SELECT * FROM t_users ORDER by T_ROLES_ID_ROLE');

        while($user = $statement->fetch())
        {

            $post  =  '<tr>
                        <td>'. $user['ID_USER'] .'</td>
                        <td>'. $user['USERNAME'].'</td>
                        <td>'. $user['USERFNAME'].'</td>
                        <td>'. $user['PSEUDO']. '</td>
                        <td>'. $user['USERMAIL'] . '</td>
                        <td>'. findRole($user['T_ROLES_ID_ROLE'],$db). '</td>
                        <td>
                        <a class="btn btn-primary" href="index.php?page=update_user&amp;id='.$user['ID_USER'].'"><span class="glyphicon glyphicon-pencil"></span> Ajouter un rôle</a>
                        <a class="btn btn-danger" href="index.php?page=delete_user&amp;id='.$user['ID_USER'].'"><span class="glyphicon glyphicon-remove"></span> Supprimer ce rôle</a>
                        </td> 
                       </tr>';
            echo $post;
        }

        Database::disconnect();
        ?>  </tbody>
    </table>
</div>