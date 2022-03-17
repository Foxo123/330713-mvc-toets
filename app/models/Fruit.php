<?php


Class Fruit {

    public $db;

    public function __construct(){
        $this->db = new Database();
    }


    public function getFruits(){
        $this->db->query('SELECT * FROM fruit ORDER BY `name` ASC');
        return $this->db->resultSet();
    }
}


?>