<?php

class Database {
    public static function connect(){
        $db = new mysqli('localhost','root','','appointmentsManager');
        $db->query("set names 'utf8"); // devuelve las tildes y ñ
        return $db;
    }
}

?>