<%--
    Document   : players
    Created on : 30 oct. 2019, 15:09:22
    Author     : goturak
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>


<html>

<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, maximum-scale=1">

	<title>Players</title>
	<link rel="icon" href="favicon.png" type="image/png">
	<link rel="shortcut icon" href="favicon.ico" type="img/x-icon">

	<link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,800italic,700italic,600italic,400italic,300italic,800,700,600' rel='stylesheet' type='text/css'>

	<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="css/style.css" rel="stylesheet" type="text/css">
	<link href="css/font-awesome.css" rel="stylesheet" type="text/css">
	<link href="css/responsive.css" rel="stylesheet" type="text/css">
	<link href="css/magnific-popup.css" rel="stylesheet" type="text/css">
	<link href="css/animate.css" rel="stylesheet" type="text/css">
        <link rel="stylesheet" type="text/css" href="DataTables-1.10.20/css/jquery.dataTables.min.css"/>

        
	<script type="text/javascript" src="js/jquery.1.8.3.min.js"></script>
	<script type="text/javascript" src="js/bootstrap.js"></script>
	<script type="text/javascript" src="js/jquery-scrolltofixed.js"></script>
	<script type="text/javascript" src="js/jquery.easing.1.3.js"></script>
	<script type="text/javascript" src="js/jquery.isotope.js"></script>
	<script type="text/javascript" src="js/wow.js"></script>
	<script type="text/javascript" src="js/classie.js"></script>
	<script type="text/javascript" src="js/magnific-popup.js"></script>
        <script type="text/javascript" src="DataTables-1.10.20/js/jquery.dataTables.min.js"></script>
	<script src="contactform/contactform.js"></script>

	<!-- =======================================================
    Theme Name: Knight
    Theme URL: https://bootstrapmade.com/knight-free-bootstrap-theme/
    Author: BootstrapMade
    Author URL: https://bootstrapmade.com
	======================================================= -->

</head>

<body>


	<nav class="main-nav-outer" id="test">
		<!--main-nav-start-->
		<div class="container">
			<ul class="main-nav">
				<li><a href="matches">Matches</a></li>
                                <li><a href="teams">Teams</a></li>
				<li><a href="players">Players</a></li>
                                
                                <c:if test="${empty sessionScope.name}">
                                    <li><a href="login">Login</a></li>
                                </c:if>
                                <c:if test="${not empty sessionScope.name}">
                                    <li><a href="login">${sessionScope.name}</a></li>
                       
                                </c:if>
                                

			</ul>
			<a class="res-nav_click" href="#"><i class="fa fa-bars"></i></a>
		</div>
	</nav>
	<!--main-nav-end-->



	<section class="main-section" id="players">
		<!--main-section-start-->
            <div class="container Player-Box">
                <div class="row">
                    
                <div class="col-sm-8">
                    <h2>All Players</h2>
                </div>
                <div class="col-sm-4 float-right">
                   <a href="newPlayer"><h3>Add player</h3></a> 

                </div>

                </div>
				
            <div class="row">
                            
             <div class="list-group">
                <table id="playersTable" class="display">
                   <thead>
                       <tr>
                           <th>Username</th>
                           <th>Name</th>
                           <th>Team</th>                        
                       </tr>
                   </thead>
                   <tbody>
                       
                       
                   </tbody>
                </table>
               

              
            </div>
          
            
        <!--<div id="playerInfo" class="collapse col-lg-8 col-sm-6  text-center">
          <img src="img/UserNoImg.png" class="img-fluid float-mi" alt="">

        </div>
-->

			</div>
		</div>
	</section>
	<!--main-section-end-->




	<footer class="footer">
		<div class="container">
			<div class="footer-logo"><a href="#"><img src="img/footer-logo.png" alt=""></a></div>
			<span class="copyright">&copy; Knight Theme. All Rights Reserved</span>
			<div class="credits">
				<!--
          All the links in the footer should remain intact.
          You can delete the links only if you purchased the pro version.
          Licensing information: https://bootstrapmade.com/license/
          Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/buy/?theme=Knight
        -->
				Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
			</div>
		</div>
	</footer>


	<script type="text/javascript">
		$(document).ready(function(e) {

                        $('#playersTable').DataTable({
                            "processing": true,
                            "serverSide": true,
                            "ajax": {
                                "url": "players",
                                "type": "POST"
                            }
                                                       
                        });
                       
                        

			$('#test').scrollToFixed();
			$('.res-nav_click').click(function() {
				$('.main-nav').slideToggle();
				return false

			});

      $('.Portfolio-box').magnificPopup({
        delegate: 'a',
        type: 'image'
      });

		});
	</script>

	<script>
		wow = new WOW({
			animateClass: 'animated',
			offset: 100
		});
		wow.init();
	</script>
    <script type="text/javascript">
    $(document).on('click', '.custom-clickable-row', function(e){
	var url = $(this).data('href');

	window.location = url;
    });
    </script>
    

	<script type="text/javascript">
		$(window).load(function() {

			$('.main-nav li a, .servicelink').bind('click', function(event) {
				var $anchor = $(this);

				$('html, body').stop().animate({
					scrollTop: $($anchor.attr('href')).offset().top - 102
				}, 1500, 'easeInOutExpo');
				/*
				if you don't want to use the easing effects:
				$('html, body').stop().animate({
					scrollTop: $($anchor.attr('href')).offset().top
				}, 1000);
				*/
				if ($(window).width() < 768) {
					$('.main-nav').hide();
				}
				event.preventDefault();
			});
		})
	</script>

	<script type="text/javascript">
		$(window).load(function() {


			var $container = $('.portfolioContainer'),
				$body = $('body'),
				colW = 375,
				columns = null;


			$container.isotope({
				// disable window resizing
				resizable: true,
				masonry: {
					columnWidth: colW
				}
			});

			$(window).smartresize(function() {
				// check if columns has changed
				var currentColumns = Math.floor(($body.width() - 30) / colW);
				if (currentColumns !== columns) {
					// set new column count
					columns = currentColumns;
					// apply width to container manually, then trigger relayout
					$container.width(columns * colW)
						.isotope('reLayout');
				}

			}).smartresize(); // trigger resize to set container width
			$('.portfolioFilter a').click(function() {
				$('.portfolioFilter .current').removeClass('current');
				$(this).addClass('current');

				var selector = $(this).attr('data-filter');
				$container.isotope({

					filter: selector,
				});
				return false;
			});

		});
	</script>

</body>

</html>
