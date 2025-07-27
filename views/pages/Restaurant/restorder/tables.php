<style>
.rest-wrap{
    display:flex;
    gap:40px;
    flex-flow:row wrap;
}
.rest-table{
    position: relative;
   width: 200px;
   height:200px;
   box-shadow:0 0 10px 2px rgba(0,0,0.2);
   display:flex;
   justify-content:center;
   align-items:center;
   font-size:1rem;
   flex-direction:column;
   padding:10px;  
   background-size:cover;
   background-position:center;
  
}

.rest-table .name{
    font-size:1.2rem;
    color:#fff;
}

.rest-table .seat{
    font-size:1.2rem;
    color:#fff;
}

.rest-btn{
    background-color:purple;
    color:#fff;
    position:absolute;
    bottom: 0;
}

.table-info{
    position:absolute;
    top: 0;
    background-color:rgba(0,0,0,.6);
    width: 100%;
    padding:5px;
    display:flex;
    justify-content:space-between;
    
}
.pink1{
    background-color:deeppink;
}

.green1{
    background-color:green;
}

.orange1{
    background-color:orange;
}
</style>

<?php
Page::open();
Row::open();
Col::open();
Card::open();
?>

<div class="rest-wrap">
<?php
  $tables=RestTable::all();
  //print_r($tables);
  foreach($tables as $table){

    if($table->status==0){
        $css="green1";
    }else if($table->status==1){
        $css="pink1";
    }else if($table->status==2){
        $css="orange1";
    }
?>

  <div class="rest-table <?=$css?>" style="background-image:url('<?=$base_url?>/img/<?=$table->photo?>')">
    
  <div class="table-info">
   <div class="name"><?= $table->name;?></div>
   <div class="seat">Seats : <?= $table->seats;?></div>
 </div>
   <a class="btn rest-btn" href="<?=$base_url?>/restorder/create/<?=$table->id?>">Place Order</a>
  </div>  

  <?php } ?>
</div>

<?php
Card::close();
Col::close();
Row::close();
Page::close();

?>


<script>


</script>