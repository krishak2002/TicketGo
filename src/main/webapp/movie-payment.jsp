<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="opt_spot.japneet.database.DBLoader" %>

<!DOCTYPE html>
<html>
<head>
<title>Movie Payment :: OPT SPOT</title>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom Theme files -->
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<!-- Custom Theme files -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- Custom Theme files -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="My Show Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--webfont-->
<link href='//fonts.googleapis.com/css?family=Oxygen:400,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
<!-- start menu -->
<link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
<script type="text/javascript" src="js/megamenu.js"></script>
<script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
<script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/menu.css" />
<script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
		    <script type="text/javascript">
			    $(document).ready(function () {
			        $('#horizontalTab').easyResponsiveTabs({
			            type: 'default', //Types: default, vertical, accordion           
			            width: 'auto', //auto or any width like 600px
			            fit: true   // 100% fit in a container
			        });
			    });
</script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
<![endif]-->
<!---- start-smoth-scrolling---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
			jQuery(document).ready(function($) {
				$(".scroll").click(function(event){		
					event.preventDefault();
					$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
				});
			});
		</script>
<!---- start-smoth-scrolling---->
<%
    
  int id4 = Integer.parseInt(request.getParameter("screenid"));
  int id44 = Integer.parseInt(request.getParameter("movieid"));
  int pay  = Integer.parseInt(request.getParameter("sum"))+42;
  String ch=(String) request.getParameter("totalseats");
%>
                                                         



</head>
 <body style="background-color: white;">
        <!-- header-section-starts -->
        <div style="background-color: white;  "   > 
            <div style="background-color:#003b64" >   
        <%@include file="header.jsp" %>
        
        
				<div class="main-content" style="background-color:#003b64">
            <div class="header" >
            <div class="logo">
                <a href="index.jsp"><h1 style="color:yellow">OPT SPOT</h1></a>
            </div>
            <div class="search">
                <div class="search2">
                    <form>
                        <i class="fa fa-search"></i>
                        <input type="text" value="Search for a movie, play, event, sport or more" onfocus="this.value = '';" onblur="if (this.value == '') {
                                            this.value = 'Search for a movie, play, event, sport or more';
                                        }"/>
                    </form>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
          
    </div>
 </div>
	
        
            <div class="bootstrap_container">
            <nav class="navbar navbar-default w3_megamenu" role="navigation" >
                <div class="navbar-header">
                    <button type="button" data-toggle="collapse" data-target="#defaultmenu" class="navbar-toggle"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a href="index.jsp" class="navbar-brand"><i class="fa fa-home"></i></a>
                </div><!-- end navbar-header -->
                <!-- nav-bar -->
                <%@include file="navbar.jsp" %>


            </nav><!-- end navbar navbar-default w3_megamenu -->
        </div><!-- end container -->

<!-- AddThis Smart Layers END -->
			 
		<div class="e-payment-section">
			<div class="col-md-8 payment-left">
				<div class="confirm-details">
					<h3>Confirm Your Contact Details</h3>
					<input type="text" value="Email address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email address';}">
					<input type="text" value="Mobile number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Mobile number';}">
					<p><i>Your number will be used for transaction confirmations & none of those painful promotions.</i></p>
					<div class="c-lang">
						<input type="checkbox" id="c1" name="cc">
						<label class="lang">International number?</label>
					</div>
					<div class="c-lang">
						<input type="checkbox" id="c1" name="cc">
						<label class="lang">Keep me updated on the latest in entertainment, offers and much more</label>
					</div>
				</div>
				<div class="payment-options">
					<h3>payment-options</h3>
					<div class="tabs-box">
					<ul class="tabs-menu booking-menu">
						<li><a href="#tab1">Debit/Credit Card</a></li>
						<li><a href="#tab2">Credit Card EMI</a></li>
						<li><a href="#tab3">Net Banking</a></li>
						<li><a href="#tab4">PayPal</a></li>
					</ul>
					<div class="clearfix"> </div>
					<div class="tab-grids event-tab-grids">
						<div id="tab1" class="tab-grid">
							<img src="images/payment.png" alt="payment" />
							<input type="text" class="payment" value="Enter Your Card Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Your Card Number';}">
							<input type="text" class="payment" value="Your Name On Card" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Name On Card';}">
							<p>Expiry:<select class="month">
														<option value="">Select</option>
														<option value="01">Jan</option>
														<option value="02">Feb</option>
														<option value="03">Mar</option>
														<option value="04">Apr</option>
														<option value="05">May</option>
														<option value="06">Jun</option>
														<option value="07">Jul</option>
														<option value="08">Aug</option>
														<option value="09">Sep</option>
														<option value="10">Oct</option>
														<option value="11">Nov</option>
														<option value="12">Dec</option>
													</select>
													<select class="year">
														<option value="">Year</option>
														<option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option><option value="2023">2023</option><option value="2024">2024</option><option value="2025">2025</option><option value="2026">2026</option><option value="2027">2027</option><option value="2028">2028</option><option value="2029">2029</option><option value="2030">2030</option><option value="2031">2031</option><option value="2032">2032</option><option value="2033">2033</option><option value="2034">2034</option><option value="2035">2035</option><option value="2036">2036</option><option value="2037">2037</option><option value="2038">2038</option><option value="2039">2039</option><option value="2040">2040</option><option value="2041">2041</option><option value="2042">2042</option><option value="2043">2043</option><option value="2044">2044</option><option value="2045">2045</option><option value="2046">2046</option><option value="2047">2047</option><option value="2048">2048</option><option value="2049">2049</option><option value="2050">2050</option><option value="2051">2051</option><option value="2052">2052</option><option value="2053">2053</option><option value="2054">2054</option><option value="2055">2055</option><option value="2056">2056</option><option value="2057">2057</option><option value="2058">2058</option><option value="2059">2059</option><option value="2060">2060</option><option value="2061">2061</option><option value="2062">2062</option><option value="2063">2063</option><option value="2064">2064</option><option value="2065">2065</option><option value="2066">2066</option><option value="2067">2067</option><option value="2068">2068</option><option value="2069">2069</option><option value="2070">2070</option><option value="2071">2071</option><option value="2072">2072</option><option value="2073">2073</option><option value="2074">2074</option></select>
														<input type="text" class="cvv" value="cvv" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'cvv';}">
														</p>
														<input type="submit" class="go-to-pay" value="make payment">
						</div>
						<div id="tab2" class="tab-grid">
							<p>Currently available for ICICI Bank Credit Cardholders only.</p>
							<input type="text" class="payment" value="Enter Your Card Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Your Card Number';}">
						</div>
						<div id="tab3" class="tab-grid">
							<h4>Net Banking</h4>
							<div class="c-lang">
					<input type="checkbox" id="c1" name="cc">
					<label class="lang">ICICI bank</label>
				</div>
				<div class="c-lang">
					<input type="checkbox" id="c1" name="cc">
					<label class="lang">HDFC bank</label>
				</div>
				<div class="c-lang">
					<input type="checkbox" id="c1" name="cc">
					<label class="lang">SBI bank</label>
				</div>
				<div class="c-lang">
					<input type="checkbox" id="c1" name="cc">
					<label class="lang">IDBI bank</label>
				</div>
				<div class="c-lang">
					<input type="checkbox" id="c1" name="cc">
					<label class="lang">AXIS bank</label>
				</div>
				<div class="c-lang">
					<input type="checkbox" id="c1" name="cc">
					<label class="lang">KOTAK bank</label>
				</div>
							<p>Select Other Banks :<select class="year"><option value="">=== Other Banks ===</option><option value="ALB-NA">Allahabad Bank NetBanking</option><option value="ADB-NA">Andhra Bank</option><option value="BBK-NA">Bank of Bahrain and Kuwait NetBanking</option><option value="BBC-NA">Bank of Baroda Corporate NetBanking</option><option value="BBR-NA">Bank of Baroda Retail NetBanking</option><option value="BOI-NA">Bank of India NetBanking</option><option value="BOM-NA">Bank of Maharashtra NetBanking</option><option value="CSB-NA">Catholic Syrian Bank NetBanking</option><option value="CBI-NA">Central Bank of India</option><option value="CUB-NA">City Union Bank NetBanking</option><option value="CRP-NA">Corporation Bank</option><option value="DBK-NA">Deutsche Bank NetBanking</option><option value="DCB-NA">Development Credit Bank</option><option value="DC2-NA">Development Credit Bank - Corporate</option><option value="DLB-NA">Dhanlaxmi Bank NetBanking</option><option value="FBK-NA">Federal Bank NetBanking</option><option value="IDS-NA">Indusind Bank NetBanking</option><option value="IOB-NA">Indian Overseas Bank</option><option value="ING-NA">ING Vysya Bank (now Kotak)</option><option value="JKB-NA">Jammu and Kashmir NetBanking</option><option value="JSB-NA">Janata Sahakari Bank Limited</option><option value="KBL-NA">Karnataka Bank NetBanking</option><option value="KVB-NA">Karur Vysya Bank NetBanking</option><option value="LVR-NA">Lakshmi Vilas Bank NetBanking</option><option value="OBC-NA">Oriental Bank of Commerce NetBanking</option><option value="CPN-NA">PNB Corporate NetBanking</option><option value="PNB-NA">PNB NetBanking</option><option value="RSD-DIRECT">Rajasthan State Co-operative Bank-Debit Card</option><option value="RBS-NA">RBS (The Royal Bank of Scotland)</option><option value="SWB-NA">Saraswat Bank NetBanking</option><option value="SBJ-NA">SB Bikaner and Jaipur NetBanking</option><option value="SBH-NA">SB Hyderabad NetBanking</option><option value="SBM-NA">SB Mysore NetBanking</option><option value="SBT-NA">SB Travancore NetBanking</option><option value="SVC-NA">Shamrao Vitthal Co-operative Bank</option><option value="SIB-NA">South Indian Bank NetBanking</option><option value="SBP-NA">State Bank of Patiala NetBanking</option><option value="SYD-NA">Syndicate Bank NetBanking</option><option value="TNC-NA">Tamil Nadu State Co-operative Bank NetBanking</option><option value="UCO-NA">UCO Bank NetBanking</option><option value="UBI-NA">Union Bank NetBanking</option><option value="UNI-NA">United Bank of India NetBanking</option><option value="VJB-NA">Vijaya Bank NetBanking</option></select></p>
						</div>
						<div id="tab4" class="tab-grid">
							<div class="row">
                        <div class="col-md-6">
                            <img class="pp-img" src="images/paypal.png" alt="Image Alternative text" title="Image Title">
                            <p>Important: You will be redirected to PayPal's website to securely complete your payment.</p><a class="btn btn-primary">Checkout via Paypal</a>	
                        </div>
                        <div class="col-md-6">
                            <form class="cc-form">
                                <div class="clearfix">
                                    <div class="form-group form-group-cc-number">
                                        <label>Card Number</label>
                                        <input class="form-control" placeholder="xxxx xxxx xxxx xxxx" type="text"><span class="cc-card-icon"></span>
                                    </div>
                                    <div class="form-group form-group-cc-cvc">
                                        <label>CVV</label>
                                        <input class="form-control" placeholder="xxxx" type="text">
                                    </div>
                                </div>
                                <div class="clearfix">
                                    <div class="form-group form-group-cc-name">
                                        <label>Card Holder Name</label>
                                        <input class="form-control" type="text">
                                    </div>
                                    <div class="form-group form-group-cc-date">
                                        <label>Valid Thru</label>
                                        <input class="form-control" placeholder="mm/yy" type="text">
                                    </div>
                                </div>
                                <div class="checkbox checkbox-small">
                                    <label>
                                        <input class="i-check" type="checkbox" checked="">Add to My Cards</label>
                                </div>
                                <input class="btn btn-primary" type="submit" value="Proceed Payment">
                            </form>
                        </div>
                    </div>
						</div>
							</div>			
					<div class="clearfix"> </div>
				</div>
	<!--start-carrer-->
	<!----- Comman-js-files ----->
		<script>
			$(document).ready(function() {
				$("#tab2").hide();
				$("#tab3").hide();
				$("#tab4").hide();
				$(".tabs-menu a").click(function(event){
					event.preventDefault();
					var tab=$(this).attr("href");
					$(".tab-grid").not(tab).css("display","none");
					$(tab).fadeIn("slow");
				});
			});
		</script>

				</div>
			</div>
			<div class="col-md-4">
			<div class="payment-right">
				<h3>Ticket Summary</h3>
                                   <%
                                                         int id3 = Integer.parseInt(request.getParameter("screenid"));
                                                         int idm = Integer.parseInt(request.getParameter("movieid"));
                                                         int id333 = Integer.parseInt(request.getParameter("sum"));
                                                         int finalpay = id333 + 42;
                                                         String seatsnum=(String) request.getParameter("totalseats");
                                                         int noofseats = Integer.parseInt(request.getParameter("n"));
                                               try{
                                                
                                                   
                                                    ResultSet rs3 = DBLoader.executeSQL("select * from shows where screens="+id3+" and movie="+idm);
                                                    
                                                    if(rs3.next())
                                                    {
                                                     int showid= rs3.getInt("id");
                                                    int movieid= rs3.getInt("movie");
                                                    int multiplexid= rs3.getInt("multiplex");
                                                    int screenid= rs3.getInt("screens");
                                                    String dt= rs3.getString("date");
                                                    String tm= rs3.getString("time");
                                                    

                                                    ResultSet rs2 = DBLoader.executeSQL("select * from movies where id="+movieid);
                                                    if(rs2.next())
                                                    {
                                                        String moviename= rs2.getString("moviename");
                                                    %>
            
				<h6><span>Movie-Name:</span><%=moviename%></h6>
                                
                                             <%
                                                         }
                                                         ResultSet rs = DBLoader.executeSQL("select * from multiplex where id="+multiplexid);
                                                    if(rs.next())
                                                    {
                                                        String multiplexname= rs.getString("multiplexname");
                                                        String city= rs.getString("city");
                                                        String address= rs.getString("address");

                                                     %>
                                                     
				<p><span>Theatre:</span> <%=multiplexname%> </p>
				<p><span>city:</span><%=city%></p>
				<p><span>Location:</span><%=address%></p>
                                
                                  <%
                                            System.out.println("select * from shows where movie="+idm+"and multiplex="+multiplexid);
                                             ResultSet rs4 = DBLoader.executeSQL("select * from shows where movie="+idm+" and multiplex="+multiplexid);
                                             
                                             while(rs4.next())
                                            {
                                                    String date= rs4.getString("date");
                                                    String time= rs4.getString("time");
                                        %>
				<p><span>Date:</span> <%=date%></p>
				<p><span>Time:</span> <%=time%></p>
                                <p><span>Qty:</span> <%=noofseats%></p>
				<p><span>Seats:</span> <%=seatsnum%></p>
				<h4><span>Total :</span><%=id333%></h4>
				<p>+ (Internet handling fees : Rs. 42.00 (incl. of Service Tax))</p>
                                <script>

    function go()
        {
            window.location.href="PaymentTest.jsp?screenid="+<%=id3%>+"&movieid="+<%=idm%>+"&pay="+<%=finalpay%>+"&chair="+<%=seatsnum%>;
        }
    
    
</script>
                                <input type="button" class="btn btn-group-justified btn-primary" onclick="location.href = 'PaymentTest.jsp?screenid='+<%=id3%>+'&movieid='+<%=idm%>+'&pay='+<%=finalpay%>+'&totalseats='+'<%=seatsnum%>';" value="Pay Grand Total :Rs<%=finalpay%>">
                                
                                
                                   <%   }
                                            }
                                                }
                                                    }
                                                
                                                  catch(Exception ex)
                                                  {
                                                      ex.toString();
                                                  }

                                                    %> 
        
        
                                
                                
                                <!--  onclick="location.href = 'PaymentTest.jsp';" to redirect using button-->
                                
			</div>
			<div class="ticket-note">
				<h3>Note:</h3>
				<ol>
					<li><p>Registrations/Tickets once booked cannot be exchanged, cancelled or refunded.</p></li>
					<li><p>In case of Credit/Debit Card bookings, the Credit/Debit Card and Card holder must be present at the ticket counter while collecting the ticket(s).</p></li>
				</ol>
			</div>
			</div>
			<div class="clearfix"></div>
		</div>
		</div>
		 <%@include file="footer.jsp"  %>
 <script src="js/responsive-tabs.js"></script>
    <script type="text/javascript">
      $( '#myTab a' ).click( function ( e ) {
        e.preventDefault();
        $( this ).tab( 'show' );
      } );

      $( '#moreTabs a' ).click( function ( e ) {
        e.preventDefault();
        $( this ).tab( 'show' );
      } );

      ( function( $ ) {
          // Test for making sure event are maintained
          $( '.js-alert-test' ).click( function () {
            alert( 'Button Clicked: Event was maintained' );
          } );
          fakewaffle.responsiveTabs( [ 'xs', 'sm' ] );
      } )( jQuery );

    </script>
 <script type="text/javascript">
						$(document).ready(function() {
							/*
							var defaults = {
					  			containerID: 'toTop', // fading element id
								containerHoverID: 'toTopHover', // fading element hover id
								scrollSpeed: 1200,
								easingType: 'linear' 
					 		};
							*/
							
							$().UItoTop({ easingType: 'easeOutQuart' });
							
						});
					</script>
				<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
</body>
</html>