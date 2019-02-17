    <div class="col-sm-9" style="box-shadow: 1px 0 0 black">
    <?php
        if (isset($_GET['id'])){
            $id_cat = $_GET['id'];
            $db = Database::connect();
            $sql = $db -> prepare('SELECT * FROM t_categories WHERE ID_CATEGORIE = ?');
            $sql -> execute([$id_cat]);
            $categorie = $sql -> fetch();
            echo '<h1>'.$categorie['CATLIBELLE'].'</h1>';
            getCategories($id_cat);
        } else{$id_cat = 1;}
        ?>
    </div>

    <?php
    include ('./include/static/aside.php');