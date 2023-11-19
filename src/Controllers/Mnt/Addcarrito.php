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
        $viewData['generos'] = \Dao\Mnt\Juegos::getGeneros();


        if (isset($_POST['genero'])) {

            $Juegos = \Dao\Mnt\Juegos::getByGenero($_POST['genero']);        

        } else {

            $Juegos = \Dao\Mnt\Juegos::getAllGames();
        }

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