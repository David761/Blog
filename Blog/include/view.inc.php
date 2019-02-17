<div class="pc row">
    <div class="col-sm-9" style="box-shadow: 1px 0 0 black">
        <?php

        if(isset($_GET['id'])){
            $id = $_GET['id'];
            $db = Database::connect();
            $sql = $db -> prepare('SELECT * FROM t_articles WHERE ID_ARTICLE = ?');
            $sql -> execute([$id]);

            while($row = $sql -> fetch()){
                $post = '<section class="post"><h3 style="font-family: fantasy"> '. findCategories($row['ID_ARTICLE'], $db) .'</h3>';
                $post .= '<h2> '. $row['ARTTITRE'] . '</h2>  ';
                $post .= '<h4> '. $row['ARTCHAPO'] . ' -- Posted on '. $row['ARTDATE'].' by <span style="font-weight: bold" ">'.findAuthor($row['ID_ARTICLE'],$db).'</span> </h4>';
                $post .= '<p> '. html_entity_decode($row['ARTCONTENU']) . '</p></section>';
                echo $post;
                Database::disconnect();
            }
        }

        ?>
    </div>
    <?php include_once './include/static/aside.php'?>;

</div>