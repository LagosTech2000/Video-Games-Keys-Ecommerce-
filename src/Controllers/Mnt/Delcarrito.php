<?php

namespace Controllers\Mnt;

use Controllers\PublicController;
use \Dao\Mnt\Juegos as DaoJuegos;
use Views\Renderer;

class Delcarrito extends PublicController{

    public function run() : void
    {
        
        $idCarrito=$_GET['id'];
        \Dao\Mnt\Carrito::delCarrito($idCarrito);

        $userId = \Utilities\Security::getUserId();
        $userName = \utilities\Security::getUser()['userName'];

        
        $carrito = \Dao\Mnt\Carrito::getCarrito($userId);
        $viewData = array(
            "new_enabled"=>true,
            "edit_enabled"=>true,
            "delete_enabled"=>true,            
            'username'=>$userName
        );        

        foreach($carrito as $C){
            $C['imagen64'] = "data:image/jpg;base64," . base64_encode($C['imagen']);          
            $viewData["carrito"][] = $C;
        } 

        if(count($carrito)==0){
              $viewData['vacio']=true;
        }

        Renderer::render("mnt/carrito", $viewData);
    }
}

?>