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

        $carrito = \Dao\Mnt\Carrito::getCarrito($userId);
        
        $userName = \utilities\Security::getUser()['userName'];
        
        $viewData = array(
            "new_enabled"=>true,
            "edit_enabled"=>true,
            "delete_enabled"=>true,            
            'username'=>$userName,
            'totalP'=>0
        );        

        foreach($carrito as $C){
            $C['imagen64'] = "data:image/jpg;base64," . base64_encode($C['imagen']);          
            $viewData["carrito"][] = $C;
            $viewData["totalP"] +=$C['precio'];
        } 

        if(count($carrito)==0){
              $viewData['vacio']=true;
        }else{
            $viewData['cuenta']=count($carrito);
            $viewData['novacio']=true;
        }

        Renderer::render("mnt/carrito", $viewData);
    }
}

?>