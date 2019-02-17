<div class="pc row" >
        <h1>
            <strong>Liste des articles   </strong>
            <a href="index.php?page=addArticle" class="btn btn-success btn-lg"><span class="glyphicon glyphicon-plus"></span> Ajouter un article</a>
            <a href="index.php?page=AC" class="btn  btn-lg"><span class="glyphicon glyphicon-plus"></span> Ajouter une catégorie</a>
            <strong style="float: right"><a href="index.php?page=adminusers">Gestion des utilisateurs</a></strong>
        </h1>
        <table class="table table-bordered admin " style="font-family: 'Roboto Condensed'">
            <thead ">
            <tr style="font-weight: bold;">
                <th>Nom</th>
                <th>Article</th>
                <th>Chapo</th>
                <th>Catégorie</th>
                <th>Actions</th>
            </tr>
            </thead>
            <tbody>
        <?php
        $db = Database::connect();
        $statement = $db->query('SELECT * FROM t_articles');

       while($item = $statement->fetch())
        {
            $checkcategories = '<p style="font-size:18px;"> Posted on '.$item['ARTDATE'] .' by <span style = "font-weight: bold ; text-decoration: underline"> '.findAuthor($item['ID_ARTICLE'],$db).'</span>';
            $checkcategories .= returnXWords($item['ID_ARTICLE'],html_entity_decode($item['ARTCONTENU']),400) .'<br>';

            $post  =  '<tr>
                        <td>'. $item['ARTTITRE'] . '</td>
                        <td style="text-align: justify; font-size: 13px">'. $checkcategories. '</td>
                        <td>'. $item['ARTCHAPO']. '</td>
                        <td>'. findCategories($item['ID_ARTICLE'],$db) . '</td>
                        <td width=300>
                        <a class="btn btn-default" href="index.php?page=view&amp;id='.$item['ID_ARTICLE'].'"><span class="glyphicon glyphicon-eye-open"></span> Voir</a>
                        <a class="btn btn-primary" href="index.php?page=update&amp;id='.$item['ID_ARTICLE'].'"><span class="glyphicon glyphicon-pencil"></span> Modifier</a>
                        <a class="btn btn-danger" href="index.php?page=delete&amp;id='.$item['ID_ARTICLE'].'"><span class="glyphicon glyphicon-remove"></span> Supprimer</a>
                        </td>
                       </tr>';
            echo $post;
        }

        Database::disconnect();
        ?>  </tbody>
        </table>
    </div>
