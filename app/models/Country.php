<?php


Class Country {

    public $db;

    public function __construct(){
        $this->db = new Database();
    }


    public function getCountries(){
        $this->db->query('SELECT * FROM country ORDER BY `population` DESC');
        return $this->db->resultSet();
    }
}


?>