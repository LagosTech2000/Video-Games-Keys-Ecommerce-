<?php

namespace Controllers\Checkout;

use Controllers\PublicController;

class Checkout extends PublicController{
    public function run():void
    {
        $viewData = array();
        if ($this->isPostBack()) {
            $PayPalOrder = new \Utilities\Paypal\PayPalOrder(
                "test".(time() - 10000000),
                "http://localhost:8080/Ejercicios/3_Parcial/mvc_nw_FLagos_202301/index.php?page=checkout_error",
                "http://localhost:8080/Ejercicios/3_Parcial/mvc_nw_FLagos_202301/index.php?page=checkout_accept"
            );
             $userid= \Utilities\Security::getUserId();
             $carrito = \Dao\Mnt\Carrito::getCarrito($userid);

             foreach($carrito as $c){
                 $PayPalOrder->addItem($c['nombre'], $c['descripcion'], "GPRD".$c['idJuego'], $c['precio'], 15, 1, "DIGITAL_GOODS");//pasar cada item a la orden
             }
           
             


            $response = $PayPalOrder->createOrder();
            $_SESSION["orderid"] = $response[1]->result->id;
            \Utilities\Site::redirectTo($response[0]->href);
            die();
        }

        \Views\Renderer::render("paypal/checkout", $viewData);
    }
}
?>
