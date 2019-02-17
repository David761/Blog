<?php
function pagination($perpage){
    $db = Database::connect();
    $sql = $db -> query('SELECT count(ID_ARTICLE) as nbrArt FROM t_articles');
    $data = $sql -> fetch();
    $nbrArt = $data['nbrArt'];
    isset($_GET['p']) ? $pagec = $_GET['p'] : $pagec = 1;
    $nbPage = ceil($nbrArt/ $perpage);
    $index = ($pagec - 1 ) * $perpage;
    $query ="SELECT * FROM t_articles ORDER by ARTDATE DESC LIMIT $index,$perpage";
    $sql = $db -> query($query);
    while($row = $sql -> fetch()){
    $post = '<section class="post"><h3 style="font-family: fantasy"> '. findCategories($row['ID_ARTICLE'], $db) .'</h3>
              <h2> '. $row['ARTTITRE'] . '</h2>
              <h4> '. $row['ARTCHAPO'] . ' -- Posted on '. $row['ARTDATE'].' by <span style="font-weight: bold;text-decoration: underline" ">'.findAuthor($row['ID_ARTICLE'],$db).'</span> </h4>
              <div class="article"> '. returnXWords($row['ID_ARTICLE'],html_entity_decode($row['ARTCONTENU']),800) . '</div></section>';
    echo $post;
    Database::disconnect();
    }
    $pagination = "<div style=\"text-align: right\">";
    for ($i = 1 ; $i <= $nbPage ; $i++){
    $pagination .="<a href=\"index.php?p=$i\"> $i /</a>";
    }
    $pagination .= "</div>";
    echo $pagination;
}

