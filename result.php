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
                <li><a href="testerhome.php" class="nav-link">Home</a></li>
                <li><a href="currentaffairs.html" class="nav-link">Current Affairs</a></li>
                <li><a href="result.html" class="nav-link">Result</a></li>
            
                
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
      
      <div class="slide-1" style="background-image: url('img18.jpg');" data-stellar-background-ratio="0.5">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-12">
              <div class="row align-items-center">
                <div class="col-lg-6 mb-4">
                  <h1  data-aos="fade-up" data-aos-delay="100">Result</h1>
                 
                </div>

                
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
                <form action="resultaction.php" method="post" onsubmit="return check();" data-aos="fade">
                <?php
                include 'dbcon.php';
                $id=$_GET['id'];
                $stu=mysqli_query($conn,"select * from ans where aid='$id'");
        while($a=mysqli_fetch_array($stu))
        {
            ?>
            <input type="hidden" name="aid" value="<?php echo $a['aid'];?>">
            <input type="hidden" name="uid" value="<?php echo $a['uid'];?>">
                    <div class="form-group row">
                        <div class="col-md-6 mb-3 mb-lg-0">
                          <input type="text" class="form-control"name="name" value="<?php echo $a['sname'];?>" readonly>
                           
                        </div>
                        <div class="col-md-6">
                            <input type="text" class="form-control" name="category"  value="<?php echo $a['code'];?>" readonly>
                          </div>
                        </div>
                        <div class="form-group row">
                            <div class="col-md-12">
                              <input type="text" class="form-control" name="examcode" placeholder="Enter Exam Code"  required>
                            </div>
                          </div>
                          <div class="form-group row">
                            <div class="col-md-12">
                              <input type="text" class="form-control" name="questioncode" value="<?php echo $a['qcode'];?>" readonly>
                            </div>
                          </div>
                          <?php
        }
        ?>
        <?php
        $sq=mysqli_query($conn,"select SUM(a1)+sum(a2)+sum(a3)+sum(a4)+sum(a5)+sum(a6)+sum(a7)+sum(a8)+sum(a9)+sum(a10) as tmrk from ans where aid='$id'");
        $b=mysqli_fetch_array($sq);
        $t=$b['tmrk'];
        ?>
                          <div class="form-group row">
                            <div class="col-md-12">
                              <input type="text" class="form-control" name="mark" value="<?php echo $t;?>" readonly
                              >
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
        if(!document.getElementById("name").value.match(letters)) {
            alert('Input Alphabets for Name !!!');
            return false;
        }
        else if(!document.getElementById("category").value.match(letters)){
            alert('Input Alphabets for Category !!!');
            return false;

        }
        else if(!document.getElementById("mark").value.match(numbers)) {
            alert('Input Digits for Marks !!!');
            return false;
        }
        else {
            return true;
        }
    }
</script>
</html>