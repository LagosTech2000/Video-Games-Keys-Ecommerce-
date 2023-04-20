<?php
namespace Dao\Mnt;

use Dao\Table;

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

    public static function addCarrito(int $id_juego,$id_user){

        $sqlstr = "insert into carrito (juegos_id,usercod) values (:id_juego,:id_user);";

         self::executeNonQuery(
            $sqlstr,
            array('id_juego'=>$id_juego, 'id_user'=>$id_user)
        );

    }

    public static function delCarrito(int $id){

        $sqlstr = "delete from carrito where id = :id";

         self::executeNonQuery(
            $sqlstr,
            array('id'=>$id)
        );
        

    }
    
}



?>
