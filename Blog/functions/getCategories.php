<?php
    function getCategories($id_cat) {
        $db = Database::connect();
        $sql = $db -> prepare('SELECT * FROM t_categories_has_t_articles inner join t_articles on t_articles_id_article = id_article where t_categories_id_categorie = ? ORDER by ARTDATE DESC');
        $sql -> execute([$id_cat]);
        $data = $sql -> fetchall();
        foreach($data as $row){
            $post = '<section class="post"><h3 style="font-family: fantasy"> '. findCategories($row['ID_ARTICLE'], $db) .'</h3>
                    <h2> '. $row['ARTTITRE'] . '</h2>
                    <h4> '. $row['ARTCHAPO'] . ' -- Posted on '. $row['ARTDATE'].' by <span style="font-weight: bold;text-decoration: underline" ">'.findAuthor($row['ID_ARTICLE'],$db).'</span> </h4>
                    <div class="article"> '. returnXWords($row['ID_ARTICLE'],html_entity_decode($row['ARTCONTENU']),800) . '</div></section>';
            echo $post;
            Database::disconnect();
        }
    }