<?php

namespace Controllers\Mnt;

use Controllers\PublicController;
use Dao\Dao;
use Views\Renderer;

class Juegos extends PublicController{

    public function run() : void
    {
        $viewData = array();
        
        Renderer::render("mnt/Juegos", $viewData);
    }
}

?>
