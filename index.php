<?php
// echo phpinfo();
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Mobile Search</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- bootstrap cdn -->
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script> -->
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
<script type="text/javascript" src="https://www.turnjs.com/lib/turn.min.js "></script> 


<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="index.css"/>
<script src="index.js"></script>

<!-- jquery cdn  -->
<script
src="https://code.jquery.com/jquery-3.4.1.js"
integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
crossorigin="anonymous"></script>

</head>
<body>

<!-- show loading -->
<div id="load" class="modal2">
<div class="modal2-content animate" > 
<div class="loader" align="center" id="loader" style="display:block;margin:0 auto;"></div>
</div>
</div>
<!-- loading closed -->


<div id="body">

<!-- show details -->
<div id="id01" class="modal">
<div class="modal-content animate" action="#" method="post">
<!-- <div class="imgcontainer">
<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
</div> -->


<div class="col-sm">
<img id="image" height="30%" width='30%' style="float:right"></img>
</div>
<div class='table-responsive col-sm"'>
<table  class="table table-dark">
  <tbody id="details_table">
    <tr>
      <th scope="row">1</th>
      <td>Mark</td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Jacob</td>
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Larry</td>
    </tr>
  </tbody>
</table>
</div>
</div>
</div>
<!-- show details closed -->


<!-- navbar started -->
<nav class="navbar navbar-inverse">
<div class="container-fluid">
<div class="navbar-header">
<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
<span class="icon-bar"></span>
<span class="icon-bar"></span>
<span class="icon-bar"></span>                        
</button>
</div>
<div class="collapse navbar-collapse" id="myNavbar">
<ul class="nav navbar-nav">
<li class="active"><a href="#">Home</a></li>
<li><a href="#">About</a></li>
<li><a href="#">Gallery</a></li>
<li><a href="#">Contact</a></li>
</ul>
<ul class="nav navbar-nav navbar-right">
<li><a id="tm" href="#"><span class="glyphicon glyphicon-log-in"></span> Train Model</a></li>
</ul>
</div>
</div>
</nav>
<!-- show navbar closed -->



<!--  Notification about training-->
<div style="display:none" id="notify_trained" class="alert alert-success alert-dismissible">
    <a href="#" id='close_timer' class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Success!</strong> 
    ML object trained successfully!!<br>
    <strong id="trained_time">just now</strong>
  </div>
<!--  Notification  about trainnig close-->


<!-- show moving title -->
<marquee id="wc" behavior="alternate">  </marquee>
<!-- show moving title close -->














<!-- sliding images -->
<div class="jumbotron">
<div class="w3-content w3-section" id="slides" style="max-width:200px">
  <img style="display:block" class="mySlides" src="http://localhost/mobile_price_project/iml_project/images//samsung_galaxy_a2_core.jpeg" style="width:100%">
  <img class="mySlides" src="http://localhost/mobile_price_project/iml_project/images//samsung_galaxy_a2_core.jpeg" style="width:100%">
  <img class="mySlides" src="http://localhost/mobile_price_project/iml_project/images//samsung_galaxy_a2_core.jpeg" style="width:100%">
</div>

<div class="w3-center">
  <div class="w3-section">
    <button class="w3-button w3-light-grey" onclick="plusDivs(-1)">❮ Prev</button>
    <button class="w3-button w3-light-grey" onclick="plusDivs(1)">Next ❯</button>
  </div>
  <div id='btns'>
  <button class="w3-button demo w3-red" onclick="currentDiv(1)">1</button> 
  <button class="w3-button demo" onclick="currentDiv(2)">2</button> 
  <button class="w3-button demo" onclick="currentDiv(3)">3</button>
  </div> 
</div>

</div>
<!-- sliding images closed -->


<!-- features input form -->
<div>
<form id="features" class="form-inline" action="/action_page.php">
<div style="padding:20px">
<label for="brand">Brand:</label>
<select type="text" id="brands" placeholder="Enter Mobile Brand" name="brand">

</select>
</div>

<div style="padding:20px">
<label for="fc">Front Camera:</label>
<select type="text" id="fc" placeholder="Enter Front Camera" name="fc">

</select>
</div>

<div style="padding:20px">
<label for="fc">Rear Camera:</label>
<select type="text" id="rc" placeholder="Enter Rear Camera" name="bc">


</select>  
</div>

<div style="padding:20px"> 
<label for="ram">Ram:</label>
<select type="text" id="rams" placeholder="Enter Ram" name="ram">

</select>
</div>

<div>
<label for="rom">Internal Storage:</label>
<select type="text" id="roms" placeholder="Enter Internal Storage" name="rom">

</select>
</div>

<div style="padding:20px">
<label for="battery">Battery:</label>
<select type="text" id="batteries" placeholder="Enter Battery" name="battery">

</select>   
</div>

<div style="padding:20px">
<label for="android">Android Version:</label>
<select type="text" id="androids" placeholder="Enter Android Version" name="android">

</select>
</div>

</label>
<button type="submit">Submit</button>
</form>
</div>
<!-- features form closed -->


<!-- images on home page(upper) -->
<div class="container-fluid bg-3 text-center">    
<div id='upper_ads' class="row">


</div>
</div>
<!-- images on home page(upper) closed-->


<!-- Images on home page(lower) -->
<div class="container-fluid bg-3 text-center">    
<div id='lower_ads' class="row">

</div>
</div><br><br>
<!-- Images on home page(lower)  closed-->

<!-- footer -->
<footer class="container-fluid text-center">
<h3><e> <?php echo $footer_text; ?></e></p>
</footer>
<!-- footer closed -->
</div>
</body>
</html>

