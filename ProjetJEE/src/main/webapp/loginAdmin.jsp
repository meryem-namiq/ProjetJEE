<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>EduWell - Education HTML5 Template</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-eduwell-style.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
<!--

TemplateMo 573 EduWell

https://templatemo.com/tm-573-eduwell

-->
  </head>

<body>


  <!-- ***** Header Area Start ***** -->
  <header class="header-area header-sticky">
      <div class="container">
          <div class="row">
              <div class="col-12">
                <nav class="main-nav">
                  <!-- ***** Logo Start ***** -->
                  <a href="index.html" class="logo">
                      <img src="assets/images/templatemo-eduwell.png" alt="EduWell Template">
                  </a>
                  <!-- ***** Logo End ***** -->
                  <!-- ***** Menu Start ***** -->
                  <ul class="nav">
                    <li><a href="index.jsp" class="active">Accueil</a></li>
                    <li><a href="index.jsp">Services</a></li>
                    <li><a href="index.jsp">Evénements</a></li>
                    <li><a href="index.jsp">A propos</a></li> 
                    <li><a href="index.jsp">Contacter-Nous</a></li> 
                    <li class="has-sub">
                        <a href="javascript:void(0)">Se connecter</a>
                        <ul class="sub-menu">
                            <li><a href="loginAdmin.jsp">Administrateur</a></li>
                            <li><a href="loginUser.jsp">Utilisateur</a></li>
                        </ul>
                    </li>

                  </ul>      
                  <a class='menu-trigger'>
                      <span>Menu</span>
                  </a>
                  <!-- ***** Menu End ***** -->
                </nav>
              </div>
          </div>
      </div>
  </header>
  <!-- ***** Header Area End ***** -->



  <section class="contact-us">
    <div class="container">
      <div class="row">
        <div class="col-lg-4">
          
        </div>
        <div class="col-lg-5">
          <form id="contact" action="LoginAdmin" method="POST">
            <div class="row">
              <div class="col-lg-12">
                <div class="section-heading">
                  <h4><em>Bonjour</em></h4>
                  </div>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <input type="email" name="email" pattern="[^ @]*@[^ @]*" id="email" placeholder="Email" >
                </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <input type="password" name="password" id="password" placeholder="Mot de passe" >
                </fieldset>
              </div>
              <div class="col-lg-12">
                <fieldset>
                  <input type="submit" style="background: rgb(71, 87, 218);background: linear-gradient(-145deg, rgba(71, 87, 218,1) 0%, rgba(246,191,159,1) 100%);font-size: 13px;
  color: #fff;" id="seConnecter" value="Se connecter" class="btn"/>
                </fieldset>
              </div>
            </div>
          </form>
        </div>
        <div class="col-lg-12">
          <ul class="social-icons">
            <li><a href="#"><i class="fa fa-facebook"></i></a></li>
            <li><a href="#"><i class="fa fa-twitter"></i></a></li>
            <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
            <li><a href="#"><i class="fa fa-rss"></i></a></li>
            <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
          </ul>
        </div>
        <div class="col-lg-12">
          <p class="copyright">Copyright © 2022 EduWell Co., Ltd. All Rights Reserved. 
          
          <br>Design: <a rel="sponsored" href="https://templatemo.com" target="_blank">TemplateMo</a></p>
        </div>
      </div>
    </div>
  </section>

  <!-- Scripts -->
  <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/isotope.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/lightbox.js"></script>
    <script src="assets/js/tabs.js"></script>
    <script src="assets/js/video.js"></script>
    <script src="assets/js/slick-slider.js"></script>
    <script src="assets/js/custom.js"></script>
    <script>
        //according to loftblog tut
        $('.nav li:first').addClass('active');

        var showSection = function showSection(section, isAnimate) {
          var
          direction = section.replace(/#/, ''),
          reqSection = $('.section').filter('[data-section="' + direction + '"]'),
          reqSectionPos = reqSection.offset().top - 0;

          if (isAnimate) {
            $('body, html').animate({
              scrollTop: reqSectionPos },
            800);
          } else {
            $('body, html').scrollTop(reqSectionPos);
          }

        };

        var checkSection = function checkSection() {
          $('.section').each(function () {
            var
            $this = $(this),
            topEdge = $this.offset().top - 80,
            bottomEdge = topEdge + $this.height(),
            wScroll = $(window).scrollTop();
            if (topEdge < wScroll && bottomEdge > wScroll) {
              var
              currentId = $this.data('section'),
              reqLink = $('a').filter('[href*=\\#' + currentId + ']');
              reqLink.closest('li').addClass('active').
              siblings().removeClass('active');
            }
          });
        };

        $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
          e.preventDefault();
          showSection($(this).attr('href'), true);
        });

        $(window).scroll(function () {
          checkSection();
        });
    </script>

</body>
</html>