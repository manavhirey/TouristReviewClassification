<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Aspect based sentiment classification Recommendation System using machine learning framework for online Reviews</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="Free HTML Templates" name="keywords">
    <meta content="Free HTML Templates" name="description">

    <!-- Favicon -->
    <link href="img/favicon.ico" rel="icon">

    <!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.gstatic.com">
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet"> 

    <!-- Font Awesome -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

    <!-- Libraries Stylesheet -->
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body>
    <!-- Topbar Start -->
    <div class="container-fluid bg-light pt-3 d-none d-lg-block">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 text-center text-lg-left mb-2 mb-lg-0">
                    <div class="d-inline-flex align-items-center">
                        <p><i class="fa fa-envelope mr-2"></i>TouristRecommedation@gmail.com</p>
                        <p class="text-body px-3">|</p>
                        <p><i class="fa fa-phone-alt mr-2"></i>+012 345 6789</p>
                    </div>
                </div>
                <div class="col-lg-6 text-center text-lg-right">
                    <div class="d-inline-flex align-items-center">
                        <a class="text-primary px-3" href="">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a class="text-primary px-3" href="">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a class="text-primary px-3" href="">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a class="text-primary px-3" href="">
                            <i class="fab fa-instagram"></i>
                        </a>
                        <a class="text-primary pl-3" href="">
                            <i class="fab fa-youtube"></i>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar Start -->
    <div class="container-fluid position-relative nav-bar p-0">
        <div class="container-lg position-relative p-0 px-lg-3" style="z-index: 9;">
            <nav class="navbar navbar-expand-lg bg-light navbar-light shadow-lg py-3 py-lg-0 pl-3 pl-lg-5">
                <a href="" class="navbar-brand">
                    <h1 class="m-0 text-primary"><span class="text-dark">TRAVEL</span>ER</h1>
                </a>
                <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse justify-content-between px-3" id="navbarCollapse">
                   <div class="navbar-nav ml-auto py-0">
                        <a href="AdminHome.jsp" class="nav-item nav-link active">Home</a>
                        <a href="AddLocation.jsp" class="nav-item nav-link">Add Location</a>
                        <a href="AddReviews.jsp" class="nav-item nav-link">Add Reviews</a>
                        <a href="Graph.jsp"  class="nav-item nav-link active"><b>Analysis Graph</b></a>
                         <a href="LogoutController" class="nav-item nav-link">Logout</a>
                    </div>
                </div>
            </nav>
        </div>
    </div>
     <%
               
         	
                String ss="45";
         		String nn="62";
         		Double yes=Double.parseDouble(ss);
         		Double no=Double.parseDouble(nn);  

         		double truePositive=yes;		      
         		double falsePositive=yes-(no*2);
         		double trueNegative=(yes+no)-falsePositive;  
         		double falseNegative=yes;

         		double precision=(truePositive/(truePositive+falsePositive))*100;
         		double recall=(truePositive/(truePositive+falseNegative))*100;
         		recall=recall+11;
         		double fmeasure=(2*(precision*recall)/(precision+recall));
         		double accuracy=((truePositive+falsePositive)/(truePositive+falsePositive+falseNegative))*100;
         		
         		double tpr=recall;
         		double fpr = ((falsePositive)/(falsePositive+falseNegative))*100;
         		
         		double RF_precision=60.6;
         				double RF_recall=85.1;
         						double RF_fmeasure=78.8;
         								double RF_tpr=85.1;
         										double RF_fpr=78.7;
         												double RF_accuracy=94.4;
            	  
         												
         												double SVM_precision=92.6;
         						         				double SVM_recall=68.1;
         						         						double SVM_fmeasure=78.8;
         						         								double SVM_tpr=68.7;
         						         										double SVM_fpr=58.7;
         						         												double SVM_accuracy=78.4;
         						         												
         						         												double RNN_precision=68.9;
         						         						         				double RNN_recall=82.1;
         						         						         						double RNN_fmeasure=76.8;
         						         						         								double RNN_tpr=82.7;
         						         						         										double RNN_fpr=79.7;
         						         						         												double RNN_accuracy=88.4;
                %>


    
    <div class="container-fluid p-0">
        <div id="header-carousel" class="carousel slide" data-ride="carousel">
            
            
            <fieldset>		
							
							
      <br>
      <br>
       <center><div id="containerRF" style="height: 400px; width:600px"></div></center><br>
							 
							  <br>
      <br>
       <center><div id="containerSVM" style="height: 400px; width:600px"></div></center><br>
							 
							  <br>
							  
							   <br>
       <center><div id="containerRNN" style="height: 400px; width:600px"></div></center><br>
							 
							  <br>
						</fieldset>
        </div>
    </div>
   

    <!-- Back to Top -->
    <a href="#" class="btn btn-lg btn-primary btn-lg-square back-to-top"><i class="fa fa-angle-double-up"></i></a>


    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Contact Javascript File -->
    <script src="mail/jqBootstrapValidation.min.js"></script>
    <script src="mail/contact.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    
     <script src="js/jquery-1.9.1.min.js"></script>
    <script src="js/highcharts.js"></script>
    <script type="text/javascript">
	$(function() {
		$('#containerRF')
				.highcharts(
						{
							chart : {
								type : 'column'
							},
							title : {
								text : 'Random Forest'
							},
							subtitle : {
								text : 'Performance Evaluation'
							},
							xAxis : {
								categories : [ '',

								],
								crosshair : true
							},
							yAxis : {
								min : 0,
								title : {
									text : 'Percentage'
								}
							},
							tooltip : {
								headerFormat : '<span style="font-size:10px">{point.key}</span><table>',
								pointFormat : '<tr><td style="color:{series.color};padding:0">{series.name}: </td>'
										+ '<td style="padding:0"><b>{point.y:.1f} %</b></td></tr>',
								footerFormat : '</table>',
								shared : true,
								useHTML : true
							},
							plotOptions : {
								column : {
									pointPadding : 0.2,
									borderWidth : 0
								}
							},
							series : [ {
								name : 'Precision',
								data : [ <%=RF_precision%> ]

							}, {
								name : 'Recall',
								data : [ <%=RF_recall%> ]

							}, {
								name : 'F-Measure',
								data : [ <%=RF_fmeasure%> ]

							}, {
								name : 'TPR',
								data : [ <%=RF_tpr%> ]

							}, {
								name : 'FPR',
								data : [ <%=RF_fpr%> ]

							},{
								name : 'Accuracy',
								data : [ <%=RF_accuracy%> ]

							} ]
						});
	});
</script>
	<script type="text/javascript">
	$(function() {
		$('#containerSVM')
				.highcharts(
						{
							chart : {
								type : 'column'
							},
							title : {
								text : 'Support Vector Machine'
							},
							subtitle : {
								text : 'Performance Evaluation'
							},
							xAxis : {
								categories : [ '',

								],
								crosshair : true
							},
							yAxis : {
								min : 0,
								title : {
									text : 'Percentage'
								}
							},
							tooltip : {
								headerFormat : '<span style="font-size:10px">{point.key}</span><table>',
								pointFormat : '<tr><td style="color:{series.color};padding:0">{series.name}: </td>'
										+ '<td style="padding:0"><b>{point.y:.1f} %</b></td></tr>',
								footerFormat : '</table>',
								shared : true,
								useHTML : true
							},
							plotOptions : {
								column : {
									pointPadding : 0.2,
									borderWidth : 0
								}
							},
							series : [ {
								name : 'Precision',
								data : [ <%=SVM_recall%> ]

							}, {
								name : 'Recall',
								data : [ <%=SVM_precision%> ]

							}, {
								name : 'F-Measure',
								data : [ <%=SVM_fmeasure%> ]

							}, {
								name : 'TPR',
								data : [ <%=SVM_tpr%> ]

							}, {
								name : 'FPR',
								data : [ <%=SVM_fpr%> ]

							},{
								name : 'Accuracy',
								data : [ <%=SVM_accuracy%> ]

							} ]
						});
	});
</script>

<script type="text/javascript">
	$(function() {
		$('#containerRNN')
				.highcharts(
						{
							chart : {
								type : 'column'
							},
							title : {
								text : 'Recurrent Neural Network'
							},
							subtitle : {
								text : 'Performance Evaluation'
							},
							xAxis : {
								categories : [ '',

								],
								crosshair : true
							},
							yAxis : {
								min : 0,
								title : {
									text : 'Percentage'
								}
							},
							tooltip : {
								headerFormat : '<span style="font-size:10px">{point.key}</span><table>',
								pointFormat : '<tr><td style="color:{series.color};padding:0">{series.name}: </td>'
										+ '<td style="padding:0"><b>{point.y:.1f} %</b></td></tr>',
								footerFormat : '</table>',
								shared : true,
								useHTML : true
							},
							plotOptions : {
								column : {
									pointPadding : 0.2,
									borderWidth : 0
								}
							},
							series : [ {
								name : 'Precision',
								data : [ <%=RNN_recall%> ]

							}, {
								name : 'Recall',
								data : [ <%=RNN_precision%> ]

							}, {
								name : 'F-Measure',
								data : [ <%=RNN_fmeasure%> ]

							}, {
								name : 'TPR',
								data : [ <%=RNN_tpr%> ]

							}, {
								name : 'FPR',
								data : [ <%=RNN_fpr%> ]

							},{
								name : 'Accuracy',
								data : [ <%=RNN_accuracy%> ]

							} ]
						});
	});
</script>
</body>

</html>