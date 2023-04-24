<?php
namespace Dao\Mnt;

use Dao\Table;
use mysqli;

class Carrito extends Table{
 
    public static function getCarrito(int $id){
        $sqlstr = "SELECT * , carrito.id as idCarrito from carrito inner join juegos on juegos.id = carrito.juegos_id inner join genero on genero.id = juegos.genero_id where usercod = :id;";

        $row = self::obtenerRegistros(
            $sqlstr,
            array(
                "id"=> $id
            )
        );        
        return $row;
    }

    public static function addCarrito(int $id_juego,$usercod){

            $carrito=\Dao\Mnt\Carrito::getCarrito($usercod);
            $cantidad=1;

            foreach($carrito as $c){
                
                if($c['juegos_id']==$id_juego){
                       $cantidad = $c['cantidad'] + 1 ;
                }

            }

            


             if($cantidad==1){

                 $sqlstr = "insert into carrito (juegos_id,usercod,cantidad) values (:id_juego,:id_user,:cantidad);";
                 
                 self::executeNonQuery(
                     $sqlstr,
                     array('id_juego'=>$id_juego, 'id_user'=>$usercod,'cantidad'=>$cantidad)
                    );
                    
                }else{

                    $sqlstr = "update carrito set cantidad = :cantidad where usercod=:usercod and juegos_id = :id_juego;";
                 
                    self::executeNonQuery(
                        $sqlstr,
                        array('id_juego'=>$id_juego, 'usercod'=>$usercod,'cantidad'=>$cantidad)
                       );

                }
    
    }

    public static function delCarrito(int $id){

        $sqlstr = "delete from carrito where id = :id";

         self::executeNonQuery(
            $sqlstr,
            array('id'=>$id)
        );
        

    }


    public static function limpiarCarrito(int $id){

        $sqlstr = "delete from carrito where usercod = :id";

         self::executeNonQuery(
            $sqlstr,
            array('id'=>$id)
        );
        

    }
    
    
}
