<div class="pc">
    <h1 style="text-align: center">Ajouter une catégorie</h1>
    <div class="col-xs-8 col-xs-push-2">
        <?php if (isset($success_cat)) {echo $success_cat;} ?>
        <form action="#" method="post">
            <div class="form-group">
                <input class = "form-control" type="text" name="category" id ="category" placeholder="Catégorie ">
            </div>
            <div class="form-group">
                <input type="submit" value="Ajouté" name="Addcategory" class="btn btn-info btn-lg">
                <input type="reset" value="Effacer" class="btn btn-warning btn-lg">
            </div>
        </form>
    </div>

