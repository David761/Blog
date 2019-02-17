    <?php
        if(session_status() == PHP_SESSION_NONE){
        session_start();
        }
    ?>


<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="index.php">NFactoryBlog</a>
        </div>

        <!-- Collect the nav links, forms, and other content for toggling -->
        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.php">Home<span class="sr-only">(current)</span></a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Catégories<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <?php
                                 $db = Database::connect();
                                 $sql = $db -> query("SELECT * FROM t_categories");
                                 $categories =  $sql -> fetchall();
                                  foreach($categories as $category){
                                       echo '<li><a class = "dropdown-item" href="index.php?page=category&amp;id='.$category['ID_CATEGORIE'].'">'.$category['CATLIBELLE'].'</a></li>';
                                  }
                       ?>
                    </ul>
                </li>
            </ul>

            <ul class="nav navbar-nav navbar-right">
                <form class="navbar-form navbar-left">
                    <div class="form-group">
                        <input type="text" class="form-control" placeholder="Search">
                    </div>
                    <button type="submit" class="btn btn-default">Envoyer</button>
                </form>
                <?php
                    if (!isset($_SESSION['auth'])) {
                        echo("<li><a href=\"index.php?page=inscription\">Inscription</a></li>");
                        echo("<li><a href=\"index.php?page=login\">Login</a></li>");
                    }
                   else {
                        echo("<li><a href=\"index.php?page=admin\">Admin</a></li><li><a href=\"index.php?page=moncompte\">Mon compte</a></li>");
                        echo ("<li><a href=\"index.php?page=logout\">Logout</a></li>");
                   }
                   ?>
            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>