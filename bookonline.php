<?php include('booking.php'); ?>

<!DOCTYPE html>
<html lang="en">
   <head>
      <title>Campus Bike & Skate</title>
      <!--s
      -->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width">
      <link rel="stylesheet" href="styles.css">
      <link rel="shortcut icon" href="images/bike_2sG_icon.ico">
   </head>
 
    <body>
      <div class="container">
          <div class="row">
         <p class="skipnavigation"><a href="#contentstart">Skip navigation</a></p> 
         <header>
             <div class="col-sm-3">
                 <div><a href="index.html"><img src="images/Campus%20Bike%20and%20Skate.png" width="224" height="105" alt=""></a></div>
                </div>
             <div class="col-sm-9 hidden-xs hidden-sm">
             </div>
         </header>
         </div>
         <div class="row">
         <nav class="navbar navbar-default">
            <div class="container-fluid">
               <div class="navbar-header">
                  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                     <span class="icon-bar"></span>
                  </button>
                  <a class="navbar-brand" href="index.html">
                      <img class="img-responsive" width="130px" height="" src="images/CampusBike.png">
                   </a>
               </div>
               <div class="collapse navbar-collapse" id="myNavbar">
                  <ul class="nav navbar-nav">
                     <li><a href="index.html">Home</a></li>
                     <li><a href="bookonline.php">Book Online</a></li>
                     <li><a href="register.php">Login/Signup</a></li>
                  </ul>
                 <ul class="nav navbar-nav ml-auto">
                <li>
                    <a href="https://www.facebook.com/CampusBikeSkate/" class="nav-link"><i class="fa fa-facebook fa-lg"></i></a>
                </li>
                
                     <li>
                    <a href="https://www.instagram.com/campusbikeandskate/" class="nav-link"><i class="fa fa-instagram fa-lg"></i></a>
                </li>
            </ul>
               </div>
            </div>
         </nav>
             
              <!-- Welcome to online booking section container -->
      <div class="boxed">
  <h1>Welcome to the Campus Bikes Online Booking page!</h1>
          
          <p>We offer three different high-quality services at a budget-friendly price! Please fill out the form at the end of the webpage to submit your request to our technicians.</p>
          
          <p> If you do not have a customer ID, please go to the <a href="login.html">login/signup page</a>
 to create your account to get an ID!</p>
       </div>
             
         <!-- Slideshow container -->
<div class="slideshow-container">

  <!-- Full-width images with number and caption text -->
  <div class="mySlides fade">
    <div class="numbertext">1 / 3</div>
    <img src="images/cleaningservice.jpg" style="width:100%">
    <div class="text"><h2>Cleaning Service</h2>
                      <h3>Price: $19.99</h3></div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">2 / 3</div>
    <img src="images/bikerepair.jpg" style="width:100%">
    <div class="text"><h2>Custom Bike Repair</h2>
                      <h3>Price: $39.99</h3></div>
  </div>

  <div class="mySlides fade">
    <div class="numbertext">3 / 3</div>
    <img src="images/alterations.jpg" style="width:100%">
    <div class="text"><h2>Alteration</h2>
                      <h3>Price: $29.99</h3></div>
  </div>

  <!-- Next and previous buttons -->
  <a class="prev" onclick="plusSlides(-1)">&#10094;</a>
  <a class="next" onclick="plusSlides(1)">&#10095;</a>
</div>
<br>

<!-- The dots/circles -->
<div style="text-align:center">
  <span class="dot" onclick="currentSlide(1)"></span> 
  <span class="dot" onclick="currentSlide(2)"></span> 
  <span class="dot" onclick="currentSlide(3)"></span> 
</div>
             
<!-- Campus Bike Service Form -->
<div class="container">
  <form action="bookonline.php" method="post">

    <label for="email">E-mail Address:</label>
    <input type="text" id="custID" name="email" placeholder="Email Address..">

    <label for="services">Service Type:</label>
    <input type="text" id="services" name="servicetype" placeholder="Choose what service you would like..">

    <label for="date">Date of Appointment: </label>
    <input type="date" id="date" name="dateofappt">
    
      <label for="description">Description/Additional Comments:</label>
    <textarea id="description" name="description" placeholder="Please type in any additional information that our technicians should know" style="height:200px"></textarea>

    <input type="submit" name="submit" value="Submit">
  </form>
    
</div>


<!-- Footer -->
         <footer>
            <p>c/o Campus Bike & Skate </p>
            <p>9500 Gilman Drive</p>
            <p>La Jolla, CA 92093</p>
            <p>(858)-534-4279</p>
             
         </footer>
      </div>
     </div>
       
        <!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
		
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
       
		<!-- jQuery library -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
		
		<!-- Latest compiled JavaScript -->
		<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        
         <script src="jsscript.js"></script>
   </body>
</html>