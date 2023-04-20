<?php
namespace Dao\Mnt;

use Dao\Table;

class Juegos extends Table{
 
    public static function getAllGames() {
        $selectSql = "SELECT * from juegos;";
        return self::obtenerRegistros($selectSql, array());
    }
}

?>
