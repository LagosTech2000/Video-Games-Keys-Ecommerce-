<?php
namespace Dao\Mnt;

use Dao\Table;

class Historial extends Table{
 
    public static function insert(int $idusuario,int $idjuego){

        $sqlstr = "insert into ventas (idUsuario,idJuego ,created_at) values (:idusuario, :idjuego, now());";

        $row = self::obtenerRegistros(
            $sqlstr,
            array(                
                "idusuario"=> $idusuario,
                "idjuego"=> $idjuego
            )
        );        
        return $row;
    }


    public static function getHistorial(int $idusuario){

        $sqlstr = "select * from ventas inner join usuario on usuario.usercod = ventas.idUsuario inner join juegos on juegos.id = ventas.idJuego where usercod = :idusuario order by created_at;";

        $row = self::obtenerRegistros(
            $sqlstr,
            array(                
                "idusuario"=> $idusuario        
            )
        );        
        return $row;
    }



    
}

?>
