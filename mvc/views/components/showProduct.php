<section class="product-area li-laptop-product pt-60 pb-45">
                <div class="container">
                    <div class="row">
                        <!-- Begin Li's Section Area -->
                    <?php 
                        $countCategory = count($data["allCategory"]);
                        for($i=0;$i<$countCategory;$i++) {
                            echo '<div class="col-lg-12">
                                <div class="li-section-title">
                                    <h2>
                                        <a href="http://localhost/Laptrinhweb/Home/productList/'.$data["allCategory"][$i]["id"].'"><span>'.$data["allCategory"][$i]["name"].'</span></a>
                                    </h2>
                                </div>
                                <div class="row">
                                    <div class="product-active owl-carousel">';
                            for($j=0;$j<$data["countProduct"];$j++){
                                if($data["allProduct"][$j]["category_id"] == $data["allCategory"][$i]["id"]){
                                echo    '
                                                <div style="margin-bottom:50px" class="col-lg-12">
                                                    <!-- single-product-wrap start -->
                                                    <div class="single-product-wrap">
                                                        <div class="product-image">
                                                            <a href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["allProduct"][$j]["id"].'">
                                                                <img src="'.$data["allProduct"][$j]["thumbnail"].'" alt="Lis Product Image">
                                                            </a>
                                                            <span class="sticker">New</span>
                                                        </div>
                                                        <div class="product_desc">
                                                            <div class="product_desc_info">
                                                                <h4><a class="product_name" href="http://localhost/Laptrinhweb/Home/productDetail/'.$data["allProduct"][$j]["id"].'">'.$data["allProduct"][$j]["title"].'</a></h4>
                                                                <div style="margin-top:10px" class="price-box">
                                                                    <span  class="new-price">'.number_format($data["allProduct"][$j]["price"]).' VNĐ</span>
                                                                </div>
                                                                <div  class="price-box">
                                                                    <span class="old-price">'.number_format($data["allProduct"][$j]["discount"]).' VNĐ</span>
                                                                </div>
                                                                </div>
                                                            <div class="add-actions">
                                                                <button class="btnproduct" onclick="addToCard('.$data["allProduct"][$j]["id"].','.$data["allProduct"][$j]["price"].')" >Thêm vào giỏ</button>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <!-- single-product-wrap end -->
                                                </div>';
                                        }
                                    }
                        echo        '</div>
                                </div>
                            </div>';
                        }
                    ?>
                    </div>

                </div>
            </section>
<script type="text/javascript">
    function addToCard(productId, priceProduct) {
        var action = "add";
        $.ajax({
            url:"home/addToCart",
            method:"POST",
            data:{action:action ,productId:productId, num:1, priceProduct:priceProduct},
            success:function(data){
                location.reload();
            }
        });
    }
</script>