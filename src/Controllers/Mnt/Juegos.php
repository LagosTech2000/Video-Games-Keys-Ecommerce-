<?php

namespace Controllers\Mnt;

use Controllers\PublicController;
use \Dao\Mnt\Juegos as DaoJuegos;
use Views\Renderer;

class Juegos extends PublicController{

    public function run() : void
    {
        $viewData = array(
            "new_enabled"=>true,
            "edit_enabled"=>true,
            "delete_enabled"=>true,
            'juegos'=>DaoJuegos::getAllGames()
        );        
        
        var_dump($viewData);
        Renderer::render("admin/dmin", $viewData);
    }
}

?>
