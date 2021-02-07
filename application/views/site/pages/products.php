<?php
//Columns must be a factor of 12 (1,2,3,4,6,12)
$numOfCols = 2;
$rowCount = 0;
$bootstrapColWidth = 12 / $numOfCols;
?>
<div class="row">
<?php
if($products){
foreach ($products as $product){
?>  
        <div class="col-md-<?php echo $bootstrapColWidth; ?>">
            <figure class="product-card">
                <div class="image">
                    <img src="<?= $product['image'] ?>" alt="<?= $product['price'] ?>" />
                    <div class="icons">
                        <a href="#"><i class="feather icon-filter"></i></a>
                        <a href="#"> <i class="feather icon-share-2"></i></a>
                        <a href="#"> <i class="feather icon-search"></i></a>
                    </div>
                    <a href="#" class="add-to-cart">Add to Cart</a>
                </div>
                <figcaption>
                    <h2><?= $product['title'] ?></h2>
                    <div class="price">BTC <?= $product['price'] ?> </div>
                </figcaption>
            </figure>
        </div>
<?php
    $rowCount++;
    if($rowCount % $numOfCols == 0) echo '</div><div class="row">';
}
 
?>
</div>
<?php }else { ?>
<div class="col-12">
<div class="action-info mt30 mb30">
    <div class="action-info-icon">
        <i class="feather icon-cloud-off"></i>
    </div>
    <p>No Products Found!</p>
</div>
</div>
<?php } ?>
<div id="pagination" class="mt10"><?= $pagination; ?></div>