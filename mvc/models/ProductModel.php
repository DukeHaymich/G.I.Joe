<?php
require_once "mvc/utility/utility.php";
class ProductModel extends DB{
    
    public function getAllProduct(){
        $sql = "select Product.*, Category.name as category_name from Product left join Category on Product.category_id = Category.id where Product.deleted = 0";
	    $data = $this->executeResult($sql);
        return $data;
    }

    public function selectProduct($id){
        $sql = "select * from product where id = '$id' and deleted = 0";
        $userItem = $this->executeResult($sql, true);
        return $userItem;
    }

    public function selectProductCategory($id){
        $sql = "select * from product where category_id = '$id' and deleted = 0";
        $allProduct = $this->executeResult($sql);
        return $allProduct;
    }
    
}


