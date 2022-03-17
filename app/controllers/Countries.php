<?php 
Class Countries extends Controller{
    public function index(){
        $countryModel = $this->model('Country');

        try{
            $records = "";
            foreach($countryModel->getCountries() as $record){
                $records .= "<tr>
                <th scope='row'>" . $record->id . "</th>
                <td> " . $record->name . "</td>
                <td> " . $record->capitalCity . "</td>
                <td> " . $record->continent . "</td>
                <td> " . $record->population . "</td>";
            }

        }catch(PDOException $e){
            array_push($this->logs, "getting countries failed" . $e->getMessage());
            $records = 'Database failed';
        }

        $data = [
            "records" => $records
        ];

        $this->view("countries/index", $data);
    }

}


?>