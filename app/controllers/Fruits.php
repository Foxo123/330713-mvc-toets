<?php

Class Fruits extends Controller{

    public $logs;

    public function index(){

        $fruitModel = $this->model('Fruit');

        try{
            $records = "";
            foreach($fruitModel->getFruits() as $record){
                $records .= "<tr>
                <th scope='row'>" . $record->id . "</th>
                <td> " . $record->name . "</td>
                <td> " . $record->color . "</td>
                <td> " . $record->price . "</td>";
            }

        }catch(PDOException $e){
            array_push($this->logs, "getting fruit failed" . $e->getMessage());
            $records = 'Database failed';
        }

        $data = [
            "records" => $records
        ];

        $this->view("fruits/index", $data);
    }

}

?>