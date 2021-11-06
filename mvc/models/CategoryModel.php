<?php
require_once "mvc/utility/utility.php";
class CategoryModel extends DB{
    
    public function getCategory(){
        $id = $name = '';
        if(isset($_GET['id'])) {
            $id = getGet('id');
            $sql = "select * from category where id = $id";
            $data = $this->executeResult($sql, true);

            if($data != null) {
                $name = $data['name'];
            }
        }

        $sql = "select * from category";
        $data = $this->executeResult($sql);
        return $data;
    }

    public function selectCategory($id) {
        $name = '';
        $sql = "select * from category where id = $id";
        $data = $this->executeResult($sql, true);

        if($data != null) {
            $name = $data['name'];
        }
        
        return $name;
    }
    
}


