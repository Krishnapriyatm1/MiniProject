<!DOCTYPE html>
<html lang="en">
  <head>
    <title>OnlineQuiz &mdash; System</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    
    <link href="https://fonts.googleapis.com/css?family=Muli:300,400,700,900" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <link rel="stylesheet" href="css/jquery.fancybox.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
    
  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
  
  <div class="site-wrap">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
   
    
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">
      
      <div class="container-fluid">
        <div class="d-flex align-items-center">
          

          <div class="mx-auto text-center">
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul class="site-menu main-menu js-clone-nav mx-auto d-none d-lg-block  m-0 p-0">
                <li><a href="adminhome.php" class="nav-link">Home</a></li>
                <li><a href="category.html" class="nav-link">Category</a></li>
                <li><a href="questiondetails.html" class="nav-link">Questions</a></li>
                <li><a href="testerdetails.html" class="nav-link">Tester</a></li>
                <li><a href="notification.html" class="nav-link">Notification</a></li>
                <li><a href="studentview.php" class="nav-link">Student</a></li>
               
              </ul>
            </nav>
          </div>

          <div class="ml-auto w-25">
            <nav class="site-navigation position-relative text-right" role="navigation">
              <ul class="site-menu main-menu site-menu-dark js-clone-nav mr-auto d-none d-lg-block m-0 p-0">
              <li class="cta"><a href="logout.php" class="nav-link"><span>Logout</span></a></li>
              </ul>
            </nav>
            <a href="#" class="d-inline-block d-lg-none site-menu-toggle js-menu-toggle text-black float-right"><span class="icon-menu h3"></span></a>
          </div>
        </div>
      </div>
      
    </header>
    <div class="intro-section" id="home-section">
      
        <div class="slide-1" style="background-image: url('images/hero_1.jpg');" data-stellar-background-ratio="0.5">
          <div class="container">
            <div class="row align-items-center">
              <div class="col-12">
                <div class="row align-items-center">
                  <div class="col-lg-6 mb-4">
                    <h1  data-aos="fade-up" data-aos-delay="100">Question Details</h1>
                   
                  </div>
  
                  
                </div>
              </div>
              
            </div>
          </div>
        </div>
      </div>
      <div class="site-section bg-light" id="contact-section">
        <div class="container">
  
          <div class="row justify-content-center">
            <div class="col-md-7">
    <form action="quesdetailaction.php" method="post" onsubmit="return check();" data-aos="fade">
      <div class="form-group row">
        <div class="col-md-6 mb-3 mb-lg-0">
          <select class="form-control"name="category"  required id="">
            <option value="">--Select Category--</option>
            <?php
            include 'dbcon.php';
            $sq=mysqli_query($conn,"select * from category");
            while($a=mysqli_fetch_array($sq))
            {
              ?>
              <option value="<?php echo $a['category'];?>"><?php echo $a['category'];?></option>
              <?php
            }
            ?>
            </select>
        </div>
        
        <div class="col-md-6">
                    <input type="text" class="form-control" name="qcode" required placeholder="Enter Question code">
                  </div>
                </div>
  
                <div class="form-group row">
                  <div class="col-md-12">
                    <input type="text" class="form-control" name="q1" placeholder="Enter Question 1" required >
                    <input type="text" class="form-control" name="op1" placeholder="Enter option 1" required >
                    <input type="text" class="form-control" name="op2" placeholder="Enter option 2" required >
                  </div>
                </div>
  
                <div class="form-group row">
                  <div class="col-md-12">
                    <input type="text" class="form-control" name="q2" placeholder="Enter Question 2" required>
                    <input type="text" class="form-control" name="op3" placeholder="Enter option 3" required >
                    <input type="text" class="form-control" name="op4" placeholder="Enter option 4" required >
                  </div>
                </div>
                <div class="form-group row">
                    <div class="col-md-12">
                      <input type="text" class="form-control" name="q3" placeholder="Enter Question 3" required>
                      <input type="text" class="form-control" name="op5" placeholder="Enter option 5" required >
                      <input type="text" class="form-control" name="op6" placeholder="Enter option 6" required >
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-md-12">
                      <input type="text" class="form-control" name="q4" placeholder="Enter Question 4"  required>
                      <input type="text" class="form-control" name="op7" placeholder="Enter option 7" required >
                      <input type="text" class="form-control" name="op8" placeholder="Enter option 8" required >
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-md-12">
                      <input type="text" class="form-control" name="q5" placeholder="Enter Question 5"  required>
                      <input type="text" class="form-control" name="op9" placeholder="Enter option 9" required >
                      <input type="text" class="form-control" name="op10" placeholder="Enter option 10" required >
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-md-12">
                      <input type="text" class="form-control" name="q6" placeholder="Enter Question 6"  required>
                      <input type="text" class="form-control" name="op11" placeholder="Enter option 11" required >
                      <input type="text" class="form-control" name="op12" placeholder="Enter option 12" required >
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-md-12">
                      <input type="text" class="form-control" name="q7" placeholder="Enter Question 7"  required>
                      <input type="text" class="form-control" name="op13" placeholder="Enter option 13" required >
                      <input type="text" class="form-control" name="op14" placeholder="Enter option 14" required >
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-md-12">
                      <input type="text" class="form-control" name="q8" placeholder="Enter Question 8"  required>
                      <input type="text" class="form-control" name="op15" placeholder="Enter option 15" required >
                      <input type="text" class="form-control" name="op16" placeholder="Enter option 16" required >
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-md-12">
                      <input type="text" class="form-control" name="q9" placeholder="Enter Question 9"  required>
                      <input type="text" class="form-control" name="op17" placeholder="Enter option 17" required >
                      <input type="text" class="form-control" name="op18" placeholder="Enter option 18" required >
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-md-12">
                      <input type="text" class="form-control" name="q10" placeholder="Enter Question 10"  required>
                      <input type="text" class="form-control" name="op19" placeholder="Enter option 19" required >
                      <input type="text" class="form-control" name="op20" placeholder="Enter option 20" required >
                    </div>
                  </div>
                <!-- <div class="form-group row">
                  <div class="col-md-12">
                    <textarea class="form-control" id="" cols="30" rows="10" placeholder="Write your message here."></textarea>
                  </div>
                </div> -->
                <div class="form-group row">
                    <div class="col-md-12">
                      <input type="time" class="form-control" name="time" required>
                    </div>
                  </div>
                  <div class="form-group row">
                    <div class="col-md-12">
                      <input type="date" class="form-control" name="dte" min="<?php echo date('Y-m-d');?>" required>
                    </div>
          </div>
                    <div class="form-group row">
                    <div class="col-md-12">
                      <input type="text" class="form-control" name="tmrk" placeholder="Enter Total Mark"  required>
                    </div>
                  </div>
                  
                <div class="form-group row">
                  <div class="col-md-6">
                    
                    <input type="submit" class="btn btn-primary py-3 px-5 btn-block btn-pill" value="ADD">
                  </div>
                </div>
  
              </form>
            </div>
          </div>
        </div>
      </div>
      <footer class="footer-section bg-white">
        <div class="container">
        
  
          <div class="row pt-5 mt-5 text-center">
            <div class="col-md-12">
              <div class="border-top pt-5">
              <p>
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
          Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="icon-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank" >Colorlib</a>
          <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
        </p>
              </div>
            </div>
            
          </div>
        </div>
      </footer>
  
    
      
    </div> <!-- .site-wrap -->
  
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/jquery-ui.js"></script>
    <script src="js/popper.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/jquery.stellar.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/bootstrap-datepicker.min.js"></script>
    <script src="js/jquery.easing.1.3.js"></script>
    <script src="js/aos.js"></script>
    <script src="js/jquery.fancybox.min.js"></script>
    <script src="js/jquery.sticky.js"></script>
  
    
    <script src="js/main.js"></script>
 
</body>
<script>
    function check() {
        var letters=/^['A-Z a-z']+$/;
        var numbers=/^['0-9']+$/;
        if(!document.getElementById("category").value.match(letters)) {
            alert('Input Alphabets for Category !!!');
            return false;
        }
        else{
            return true;
        }
    }
</script>
</html>