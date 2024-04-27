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
						<h2>Services</h2>
						<ul>
							<li><a href="index.jsp">Home</a></li>
							<li>Services</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- End Page Title Section -->
	
	<!-- Start Services Section -->
	<section class="services-section section-padding">
		<div class="container">
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="single-services-item">
						<div class="services-icon">
							<i class=""></i>
						</div>
						<h3>Lung Cancer Gene</h3>
						<p>The database contains all known genetic information related to lung cancer, in order of highest to lowest relevance</p>
						<div class="services-btn">
							<a href="gene.jsp" class="read-more"><i class="bi bi-arrow-right-short"></i> Read More</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-services-item">
						<div class="services-icon">
							<i class=""></i>
						</div>
						<h3>Targeted Drug</h3>
						<p>The database contains information on all currently known targeted drugs associated with lung cancer to support treatment</p>
						<div class="services-btn">
							<a href="drug.jsp" class="read-more"><i class="bi bi-arrow-right-short"></i> Read More</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-services-item">
						<div class="services-icon">
							<i class=""></i>
						</div>
						<h3>PPI Analysis</h3>
						<p>LThis module provides personalized PPI analysis support to visualize the associations between individual lung cancer-related genes</p>
						<div class="services-btn">
							<a href="#" class="read-more"><i class="bi bi-arrow-right-short"></i> Read More</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-services-item">
						<div class="services-icon">
							<i class=""></i>
						</div>
						<h3>Gene Inquiry</h3>
						<p>The module provides personalized query function, which can query the corresponding gene information according to the gene symbol</p>
						<div class="services-btn">
							<a href="gene-inquiry.jsp" class="read-more"><i class="bi bi-arrow-right-short"></i> Read More</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-services-item">
						<div class="services-icon">
							<i class=""></i>
						</div>
						<h3>Drug Inquiry</h3>
						<p>The module provides personalized query function, which can query the corresponding drug information according to the gene symbol</p>
						<div class="services-btn">
							<a href="drug-inquiry.jsp" class="read-more"><i class="bi bi-arrow-right-short"></i> Read More</a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-services-item">
						<div class="services-icon">
							<i class=""></i>
						</div>
						<h3>TSV Upload</h3>
						<p>This module provides the matching function of the patient variant tsv file and returns variant information based on the uploaded file</p>
						<div class="services-btn">
							<a href="tsv.jsp" class="read-more"><i class="bi bi-arrow-right-short"></i> Read More</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Services Section -->
	
	<!-- Start Work Process Section -->
    <section class="process-section bg-grey section-padding">
        <div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-title">
						<h6 class="sub-title">How To Work</h6>
						<h2>Work Process</h2>
					</div>
				</div>
			</div>
            <div class="tab process-list-tab">
                <ul class="tabs">
                    <li>
                        <a href="#"><span>1. Sequencing and QC</span></a>
                    </li>
                    <li>
                        <a href="#"><span>2. Mapping and Alignment</span></a>
                    </li>
                    <li>
                        <a href="#"><span>3. Variant Calling</span></a>
                    </li>
                    <li>
                        <a href="#"><span>4. Annotation and Matching</span></a>
                    </li>
                </ul>
                <div class="tab_content">
                    <div class="tabs_item">
                        <div class="row align-items-center">
                            <div class="col-lg-7">
                                <div class="tab-solution-content">
                                    <h3>Obtainment of sequencing result</h3>
                                    <p>Results of sequencing are usually utilized in analysis of tumor patients’ conditions since genetic sequences contains insights into the underlying drivers of disease and potential treatment options. Samples should be collected from the patient, such as tissue, blood or cytological specimens, etc. and be used for whole exome sequencing, whole genome sequencing, or other types of sequencing according to clinical need. A fastq file is expected as the result in this step.</p>
									<br>
									<h3>Quality Control of raw data</h3>
									<p>Fastqc can be used to check the quality of the fastq file before preceding to alignment to maintain the validity of the downstream processing. According to the output report, conduct adequate operations like trimming to the raw data until the data quality reaches expectation.</p>
									<br>
									<a href="https://jodyphelan.gitbook.io/tutorials/ngs/fastq-to-vcf"><p style="color:cornflowerblue">Tutorial (fastq-to-vcf)</p></a>
									<ul class="tab-list">
                                        <li>
                                            <i class="fa fa-check-circle"></i> Our mission is to provide efficient and reliable healthcare through technology
                                        </li>
                                        <li>
                                            <i class="fa fa-check-circle"></i> We specialize in custom-tailored Medical strategy
                                        </li>
                                        <li>
                                            <i class="fa fa-check-circle"></i> Provide drug solutions so that you can get effective treatment
                                        </li>
                                    </ul>
                                    <p> <em>Sequencing > quality control > mapping > alignment > variant calling > annotation > matching</em> </p>
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="tab-image">
                                    <img src="static/picture/tab-process-1.jpg" alt="image">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tabs_item">
                        <div class="row align-items-center">
                            <div class="col-lg-7">
                                <div class="tab-solution-content">
                                    <h3>Mapping and Alignment</h3>
                                    <p>The location information of the reads was obtained by mapping the original fastq format data to the reference genome. Complete this process with software BWA and Samtools to get a bam file.</p>
									<br>
									<a href="https://jodyphelan.gitbook.io/tutorials/ngs/fastq-to-vcf"><p style="color:cornflowerblue">Tutorial (fastq-to-vcf)</p></a>
									<ul class="tab-list">
                                        <li>
                                            <i class="fa fa-check-circle"></i> Our mission is to provide efficient and reliable healthcare through technology
                                        </li>
                                        <li>
                                            <i class="fa fa-check-circle"></i> We specialize in custom-tailored Medical strategy
                                        </li>
                                        <li>
                                            <i class="fa fa-check-circle"></i> Provide drug solutions so that you can get effective treatment
                                        </li>
                                    </ul>
                                    <p> <em>Sequencing > quality control > mapping > alignment > variant calling > annotation > matching</em> </p>
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="tab-image">
                                    <img src="static/picture/tab-process-2.jpg" alt="image">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tabs_item">
                        <div class="row align-items-center">
                            <div class="col-lg-7">
                                <div class="tab-solution-content">
                                    <h3>Variant Calling</h3>
                                    <p>Store variation information in genome sequences as a Variant Call Format (vcf) file. Single base mutations (SNPs), insertion/deletion (INDEL), copy number variation (CNV), and structural variation (SV) in the genome can be stored in this step into the vcf file using GATK4 for further annotation.</p>
									<br>
									<a href="https://jodyphelan.gitbook.io/tutorials/ngs/fastq-to-vcf"><p style="color:cornflowerblue">Tutorial (fastq-to-vcf)</p></a>
                                    <ul class="tab-list">
                                        <li>
                                            <i class="fa fa-check-circle"></i> Our mission is to provide efficient and reliable healthcare through technology
                                        </li>
                                        <li>
                                            <i class="fa fa-check-circle"></i> We specialize in custom-tailored Medical strategy
                                        </li>
                                        <li>
                                            <i class="fa fa-check-circle"></i> Provide drug solutions so that you can get effective treatment
                                        </li>
                                    </ul>
                                    <p> <em>Sequencing > quality control > mapping > alignment > variant calling > annotation > matching</em> </p>
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="tab-image">
                                    <img src="static/picture/tab-process-3.jpg" alt="image">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tabs_item">
                        <div class="row align-items-center">
                            <div class="col-lg-7">
                                <div class="tab-solution-content">
                                    <h3>Annotation of genetic variants using ANNOVAR</h3>
                                    <p>Compare variation information with various databases to provide detailed annotation information, including clinical relevance (such as known disease-related variants)</p>
									<a href="https://annovar.openbioinformatics.org/en/latest/articles/VCF/"><p style="color:cornflowerblue">Tutorial (annotation)</p></a>
									<br>
									<h3>Matching clinically relevant variants to the database</h3>
									<p>Now you get a tsv file with the variants of the patient annotated. By uploading this file on our website, you can get a list of related drugs as the match result. This will offer you clinical instructions of drug usage, reducing workload of users to work on drug search and information retrieval.</p>
									<ul class="tab-list">
                                        <li>
                                            <i class="fa fa-check-circle"></i> Our mission is to provide efficient and reliable healthcare through technology
                                        </li>
                                        <li>
                                            <i class="fa fa-check-circle"></i> We specialize in custom-tailored Medical strategy
                                        </li>
                                        <li>
                                            <i class="fa fa-check-circle"></i> Provide drug solutions so that you can get effective treatment
                                        </li>
                                    </ul>
                                    <p> <em>Sequencing > quality control > mapping > alignment > variant calling > annotation > matching</em> </p>
                                </div>
                            </div>
                            <div class="col-lg-5">
                                <div class="tab-image">
                                    <img src="static/picture/tab-process-4.jpg" alt="image">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Work Process Section -->
	
	<!-- Start Overview Section -->
	<section class="overview-section section-padding">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-6">
					<div class="overview-image">
						<img src="static/picture/choose-1.png" alt="image">
					</div>
				</div>
				<div class="col-lg-6">
					<div class="overview-content">
						<h6 class="sub-title">Why Choose Us?</h6>
						<h2>Dedicated to Contributing to the Field of Lung Cancer</h2>
						<p>More Professional & More Accurate & More Efficient</p>
						<ul class="features-list">
							<li> <span>Academic Resources</span></li>
							<li> <span>Senior Expert</span></li>
							<li> <span>Free Inquiry</span></li>
							<li> <span>Contractor Friendly</span></li>
							<li> <span>Cost Effectiveness</span></li>
							<li> <span>Sustainable Development</span></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Overview Section -->
	
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
								<li><a href="contact.jsp">Contact Us</a></li>
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
	<!-- Main JS -->
	<script src="static/js/main.js"></script>
	
</body>

</html>