<?php

namespace Controllers\Mnt;

use Controllers\PublicController;
use \Dao\Mnt\Juegos as DaoJuegos;
use Views\Renderer;

class Addcarrito extends PublicController{

    public function run() : void
    {
        
        $userId = \Utilities\Security::getUserId();
        
        $idJuego=$_GET['id'];        

        \Dao\Mnt\Carrito::addCarrito($idJuego,$userId);

        $viewData = array();

        $Juegos = \Dao\Mnt\Juegos::getAllGames();

        $viewData["Juegos"] = array();
        
        foreach($Juegos as $J){
            $J['imagen'] = "data:image/jpg;base64," . base64_encode($J['imagen']);          
            $viewData["Juegos"][] = $J;
        }  

        $viewData['logged']=\Utilities\Security::isLogged();
        
        \Views\Renderer::render("index", $viewData);
}
}

?>