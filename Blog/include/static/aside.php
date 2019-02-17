<div class="col-sm-3">
    <section class="blockL">
        <h2>Social</h2>
        <ul class="list-inline icon-circle icon-zoom social-icons">
            <li> <a href="#"><i class="fa fa-github"></i></a></li>
            <li> <a href="#"><i class="fa fa-linkedin"></i></a></li>
            <li> <a href="#"><i class="fa fa-facebook"></i></a></li>
            <li> <a href="#"><i class="fa fa-twitter"></i></a></li>
        </ul>
        <hr>
    </section>
    <section class="blockL">
        <h2> 5 Derniers articles </h2>
        <?php
        $db        = Database::connect();
        $sql2      = $db -> query('SELECT * FROM `t_articles` ORDER BY `ARTDATE` DESC LIMIT 5');
        $articles  = $sql2 -> fetchAll();
        foreach ($articles as $article ){
            $lien = '<a href = "index.php?page=view&amp;id='.$article['ID_ARTICLE'].'">'.$article['ARTTITRE'].'</a>';
            $last  = "<h3 style='font-size: 28px'>" .$lien."</h3>";
            $last .= '<p style = "text-align:left;font-size: 13px" > '. $article['ARTDATE'] .' ';
            $last .= '<span style="float: right;font-weight: bold; text-decoration:underline;"> By  '. findAuthor($article['ID_ARTICLE'],$db) . ' </span></p><hr>';
            echo $last;
        }
        Database::disconnect();
        ?>
    </section>
    <section class="blockC">
        <h2> Catégories </h2>
        <ul class="list-horizontal">
            <?php
            $db   = Database::connect();
            $sql3 = $db -> query('SElECT * FROM t_categories');
            $categories = $sql3 -> fetchAll();
            foreach($categories as $category){
                $lien = '<a href = "index.php?page=category&amp;id='.$category['ID_CATEGORIE'].'">'.$category['CATLIBELLE'].'</a>';
                echo "<li style='text-align: left;font-family: 'Roboto condensed'><h3>" . $lien ."</h3></li> <hr>";
            }
            ?>
        </ul>
    </section>
</div>
