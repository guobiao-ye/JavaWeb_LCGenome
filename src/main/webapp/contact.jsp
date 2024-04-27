<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="zxx">

<head>
	<!-- Required meta tags -->
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<!-- Title -->
	<title>ZJU-UOE LCGenome</title>
	<!-- Google Fonts -->
	<link href="static/css/css2.css" rel="stylesheet">
	<!-- Favicon -->
	
	<!-- Bootstrap Min CSS -->
	<link rel="stylesheet" href="static/css/bootstrap.min.css">
	<!-- Animate Min CSS -->
	<link rel="stylesheet" href="static/css/animate.min.css">
	<!-- FlatIcon CSS -->
	<link rel="stylesheet" href="static/css/flaticon.css">
	<!-- Bootstrap Icon CSS -->
	<link rel="stylesheet" href="static/css/bootstrap-icons.css">
	<!-- Font Awesome Min CSS -->
	<link rel="stylesheet" href="static/css/fontawesome.min.css">
	<!-- Mean Menu CSS -->
	<link rel="stylesheet" href="static/css/meanmenu.css">
	<!-- Magnific Popup Min CSS -->
	<link rel="stylesheet" href="static/css/magnific-popup.min.css">
	<!-- Owl Carousel Min CSS -->
	<link rel="stylesheet" href="static/css/owl.carousel.min.css">
	<!-- Style CSS -->
	<link rel="stylesheet" href="static/css/style.css">
	<!-- Responsive CSS -->
	<link rel="stylesheet" href="static/css/responsive.css">
</head>

<body>

	<!-- Start Preloader Section -->
	<div id="preloader">
		<div id="preloader-center">
			<span class="loader-box"></span>
		</div>
	</div>
	<!-- End Preloader Section -->

	<!-- Start Navbar Section -->
	<div class="navbar-section">
		<div class="techtrix-responsive-nav">
			<div class="container">
				<div class="techtrix-responsive-menu">
					<div class="logo">
						<a href="index.jsp">
							<img src="static/picture/logo.png" class="white-logo" alt="logo">
							<img src="static/picture/logo-black.png" class="black-logo" alt="logo">
						</a>
					</div>
				</div>
			</div>
		</div>
		<div class="techtrix-nav">
			<div class="container">
				<nav class="navbar navbar-expand-md navbar-light">
					<a class="navbar-brand" href="index.jsp">
						<img src="static/picture/logo.png" class="white-logo" alt="logo">
						<img src="static/picture/logo-black.png" class="black-logo" alt="logo">
					</a>
					<div class="collapse navbar-collapse mean-menu" id="navbarSupportedContent">
						<ul class="navbar-nav">
							<li class="nav-item">
								<a href="index.jsp" class="nav-link">Home</a>
							</li>
							<li class="nav-item">
								<a href="about.jsp" class="nav-link"> About Us </a>
							</li>
							<li class="nav-item">
								<a href="#" class="nav-link"> Services <i class="fas fa-chevron-down"></i></a>
								<ul class="dropdown-menu">
									<li class="nav-item">
										<a href="login.jsp" class="nav-link"> Services </a>
									</li>
									<li class="nav-item">
										<a href="single-services.jsp" class="nav-link"> Services Details </a>
									</li>
								</ul>
							</li>
							<li class="nav-item">
								<a href="#" class="nav-link"> Pages <i class="fas fa-chevron-down"></i></a>
								<ul class="dropdown-menu">
									<li class="nav-item">
										<a href="about.jsp" class="nav-link"> About Us </a>
									</li>
									<li class="nav-item">
										<a href="team.jsp" class="nav-link"> Team </a>
									</li>
									<li class="nav-item">
										<a href="pricing.jsp" class="nav-link"> Pricing </a>
									</li>
									<li class="nav-item">
										<a href="error-404.jsp" class="nav-link"> 404 Error </a>
									</li>
									<li class="nav-item">
										<a href="faq.jsp" class="nav-link"> FAQ </a>
									</li>
									<li class="nav-item">
										<a href="coming-soon.jsp" class="nav-link"> Coming Soon </a>
									</li>
									<li class="nav-item">
										<a href="terms-condition.jsp" class="nav-link"> Terms & Conditions </a>
									</li>
									<li class="nav-item">
										<a href="privacy-policy.jsp" class="nav-link"> Privacy Policy </a>
									</li>
								</ul>
							</li>
							<li class="nav-item">
								<a href="contact.jsp" class="nav-link"> Contact </a>
							</li>
						</ul>
						<div class="other-option">
							<a class="default-btn" href="contact.jsp">Get In Touch <span></span></a>
						</div>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<!-- End Navbar Section -->
	
	<!-- Start Page Title Section -->
	<div class="page-title-area">
		<div class="d-table">
			<div class="d-table-cell">
				<div class="container">
					<div class="page-title-content">
						<h2>Contact Us</h2>
						<ul>
							<li><a href="index.jsp">Home</a></li>
							<li>Contact</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Page Title Section -->
	
	<!-- Start Contact Section -->
	<div class="contact-section section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-title">
						<h6 class="sub-title">Contact Us</h6>
						<h2>Have Any Questions?</h2>
					</div>
				</div>
				<div class="col-lg-10 offset-lg-1">
					<div class="contact-form">
						<p class="form-message"></p>
						<form id="contact-form" class="main-form" action="phpmail.php" method="POST">
							<div class="row">
								<div class="col-lg-6 col-md-6">
									<div class="form-group">
										<input type="text" name="name" id="name" class="form-control" required="" placeholder="Your Name">
									</div>
								</div>
								<div class="col-lg-6 col-md-6">
									<div class="form-group">
										<input type="email" name="email" id="email" class="form-control" required="" placeholder="Your Email">
									</div>
								</div>
								<div class="col-lg-6 col-md-6">
									<div class="form-group">
										<input type="text" name="phone" id="phone" required="" class="form-control" placeholder="Your Phone">
									</div>
								</div>
								<div class="col-lg-6 col-md-6">
									<div class="form-group">
										<input type="text" name="subject" id="subject" class="form-control" required="" placeholder="Your Subject">
									</div>
								</div>
								<div class="col-lg-12 col-md-12">
									<div class="form-group">
										<textarea name="message" class="form-control" id="message" cols="30" rows="6" required="" placeholder="Your Message"></textarea>
									</div>
								</div>
								<div class="col-lg-12 col-md-12">
									<div class="contact-btn">
										<button type="submit" class="default-btn submit-btn">Send Message <span></span></button>
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Contact Section -->
	
	<!-- Start Contact Box Section -->
	<section class="contact-info-section bg-grey">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-title">
						<h6 class="sub-title">Find Us</h6>
						<h2>Contact Info</h2>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="contact-info-content">
						<h5>International Campus</h5>
						<p>718 East Haizhou Rd., Haining, Zhejiang</p>
						<a href="tel:0802235678">0571-87572104</a>
						<a href="mailto:guobiao.22@intl.zju.edu.cn">office.intl@intl.zju.edu.cn</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="contact-info-content">
						<h5>ZJU-UoE</h5>
						<p>718 East Haizhou Rd., Haining, Zhejiang</p>
						<a href="tel:0802235678">0571-87572813</a>
						<a href="mailto:guobiao.22@intl.zju.edu.cn">uoe@intl.zju.edu.cn</a>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="contact-info-content">
						<h5>Guobiao Office</h5>
						<p>718 East Haizhou Rd., Haining, Zhejiang</p>
						<a href="tel:0802235678">0571-87572813</a>
						<a href="mailto:guobiao.22@intl.zju.edu.cn">guobiao.22@intl.zju.edu.cn</a>
					</div>
				</div>
			</div>
		</div>
    </section>
	<!-- End Contact Box Section -->
	
	<!-- Start Footer & Subscribe Section -->
	<section class="footer-subscribe-wrapper">
		<!-- Start Subscribe Section -->
		<div class="subscribe-area">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-lg-6 col-md-6">
						<div class="subscribe-content">
							<h2>Sign Up Our Newsletter</h2>
							<p>We Offer An Informative Monthly Technology Newsletter - Check It Out.</p>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<form class="newsletter-form">
							<input type="email" class="input-newsletter" placeholder="Enter Your Email" name="EMAIL" required="" autocomplete="off">
							<button type="submit">Subscribe Now</button>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- End Subscribe Section -->
		<!-- Start Footer Section -->
		<div class="footer-area ptb-100">
			<div class="container">
				<div class="row">
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="single-footer-widget">
							<a class="footer-logo" href="#">
								<img src="static/picture/logo.png" class="white-logo" alt="logo">
							</a>
							<p>Customized medical services for you to achieve full coverage from prevention, diagnosis and prognosis. We are committed to building a systematic lung cancer care website</p>
							<ul class="footer-social">
								<li>
									<a href="#"> <i class="fab fa-facebook-f"></i></a>
								</li>
								<li>
									<a href="#"> <i class="fab fa-twitter"></i></a>
								</li>
								<li>
									<a href="#"> <i class="fab fa-youtube"></i></a>
								</li>
								<li>
									<a href="#"> <i class="fab fa-linkedin"></i></a>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-6 col-sm-6">
						<div class="single-footer-widget">
							<div class="footer-heading">
								<h3>Our Services</h3>
							</div>
							<ul class="footer-quick-links">
								<li> <a href="#">Lung Cancer Gene</a></li>
								<li> <a href="#">Targeted Drug</a></li>
								<li> <a href="#">PPI Analysis</a></li>
								<li> <a href="#">Gene Inquiry</a></li>
								<li> <a href="#">Drug Inquiry</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-2 col-md-6 col-sm-6">
						<div class="single-footer-widget">
							<div class="footer-heading">
								<h3>Useful Links</h3>
							</div>
							<ul class="footer-quick-links">
								<li><a href="about.jsp">About Us</a></li>
								<li><a href="portfolio.jsp">Case Study</a></li>
								<li><a href="">Contact Us</a></li>
								<li><a href="privacy-policy.jsp">Privacy Policy</a></li>
								<li><a href="terms-condition.jsp">Terms & Conditions</a></li>
							</ul>
						</div>
					</div>
					<div class="col-lg-4 col-md-6 col-sm-6">
						<div class="single-footer-widget">
							<div class="footer-heading">
								<h3>Contact Info</h3>
							</div>
							<div class="footer-info-contact"> <i class="flaticon-phone-call"></i>
								<h3>Phone</h3>
								<span><a href="tel:0802235678">0571-87572813</a></span>
							</div>
							<div class="footer-info-contact"> <i class="flaticon-envelope"></i>
								<h3>Email</h3>
								<span><a href="mailto:guobiao.22@intl.zju.edu.cn">guobiao.22@intl.zju.edu.cn</a></span>
							</div>
							<div class="footer-info-contact"> <i class="flaticon-placeholder"></i>
								<h3>Address</h3>
								<span>718 East Haizhou Rd., Haining, Zhejiang, China International Campus, Zhejiang University</span>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- End Footer Section -->
	</section>
	<!-- End Footer & Subscribe Section -->
	
	<!-- Start Copy Right Section -->
	<div class="copyright-area">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6 col-md-6">
					<p> <i class="far fa-copyright"></i> Copyright &copy; 2024.Guobaio Ye All rights reserved.<a target="_blank" href="https://sc.chinaz.com/moban/"></a></p>
				</div>
				<div class="col-lg-6 col-md-6">
					<ul>
						<li> <a href="terms-condition.jsp">Terms & Conditions</a></li>
						<li> <a href="privacy-policy.jsp">Privacy Policy</a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- End Copy Right Section -->
	
	<!-- Start Go Top Section -->
	<div class="go-top">
		<i class="fas fa-chevron-up"></i>
		<i class="fas fa-chevron-up"></i>
	</div>
	<!-- End Go Top Section -->
	
	<!-- jQuery Min JS -->
	<script src="static/js/jquery.min.js"></script>
	<!-- Popper Min JS -->
	<script src="static/js/popper.min.js"></script>
	<!-- Bootstrap Min JS -->
	<script src="static/js/bootstrap.bundle.min.js"></script>
	<!-- Mean Menu JS -->
	<script src="static/js/jquery.meanmenu.js"></script>
	<!-- Appear Min JS -->
	<script src="static/js/jquery.appear.min.js"></script>
	<!-- CounterUp Min JS -->
	<script src="static/js/jquery.waypoints.min.js"></script>
	<script src="static/js/jquery.counterup.min.js"></script>
	<!-- Magnific Popup Min JS -->
	<script src="static/js/jquery.magnific-popup.min.js"></script>
	<!-- Owl Carousel Min JS -->
	<script src="static/js/owl.carousel.min.js"></script>
	<!-- WOW Min JS -->
	<script src="static/js/wow.min.js"></script>
	<!-- Ajax Mail JS -->
	<script src="static/js/ajax.mail.js"></script>
	<!-- Main JS -->
	<script src="static/js/main.js"></script>
	
</body>

</html>