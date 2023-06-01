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
<title>My Show a Entertainment Category Flat Bootstarp responsive Website Template | Select Show :: OPT SPOT</title>
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
<link rel="stylesheet" href="css/menu.css" />
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
                            

                                                <%
                                                         int id = Integer.parseInt(request.getParameter("id"));
                                                try{
                                                
                                                   
                                                    ResultSet rs = DBLoader.executeSQL("select * from movies where id="+id);
                                                    
                                                    if(rs.next())
                                                    {
                                                    String nm = rs.getString("moviename");
                                                    String ds= rs.getString("description");
                                                    String ph = rs.getString("photo");
                                                    String st = rs.getString("status");
                                                    String director  = rs.getString("director");
                                                    String cast = rs.getString("cast");
                                                    String plot= rs.getString("plot");
                                                    String genre = rs.getString("genre");
                                                    String language = rs.getString("language");
                                                    String tr = rs.getString("trailer");  
                                                    String date = rs.getString("date");                                      
                                         
                                        
                                                %>


                                                <div class="row">                                          
                                                

	<div class="now-showing-list">
		<div class="col-md-4 movies-by-category movie-booking">
			
			<div class="movie-ticket-book">
                            <h2 style="text-align: center; text-transform: uppercase;font-weight: bold"><%=nm%></h2>
                            <br>
					<div class="clearfix"></div>
					<img src="<%=ph%>" alt="" />
					<div class="bahubali-details">
                                                <h4>Name:</h4>
						<p><%=nm%></p>
						<h4>Release Date:</h4>
						<p><%=date%></p>
						<h4>Director:</h4>
						<p><%=director%></p>
						<h4>Language:</h4>
						<p><%=language%></p>
                                                <h4>Status:</h4>
						<p><%=st%></p>
                                                <h4>Description:</h4>
						<p><%=ds%></p>
						<h4>Genre:</h4>
						<p><%=genre%></p>
						<h4>Cast & Crew:</h4>
						<p><%=cast%></p>
					</div>
				</div>
			</div>
                                        
                                           <%
            }
        }
          catch(Exception ex)
          {
              ex.toString();
          }

            %> 
                                          
   
		
                          <%
                                                         
                                                try{
                                                
                                                   int id1 = Integer.parseInt(request.getParameter("id"));
                                                   System.out.println("-->"+id1);
                                                    ResultSet rs = DBLoader.executeSQL("select distinct(multiplex) from shows where movie="+id1);
                                                    
                                                    while(rs.next())
                                                    {
                                                    int mid = rs.getInt("multiplex");
                                                    String usercity = (String) session.getAttribute("usercity");
                                                    ResultSet rs2 = DBLoader.executeSQL("select multiplexname from multiplex where id="+mid+" and status='approve' and city='"+usercity+"'");
                                                    if(rs2.next())
                                                    {
                                                     String mn= rs2.getString("multiplexname"); 
                                                            
                                               
                                                %>
                        <div class="col-md-8 movies-dates">
			<div class="movie-date-selection" >
				<ul>
					<li class="location">
						<a href="pic-a-movie.html"><i class="fa fa-map-marker"></i>Theater Name: <%=mn%></a>
					</li>
                
                                        <%
                                            System.out.println("select * from shows where movie="+id1+"and multiplex="+mid);
                                             ResultSet rs3 = DBLoader.executeSQL("select * from shows where movie="+id1+" and multiplex="+mid);
                                             
                                             while(rs3.next())
                                            {
                                                    int showid= rs3.getInt("id");
                                                    int movieid= rs3.getInt("movie");
                                                    int multiplexid= rs3.getInt("multiplex");
                                                    int screenid= rs3.getInt("screens");
                                                    String dt= rs3.getString("date");
                                                    String tm= rs3.getString("time");
                                        %>
					<li class="time">
						<a href="SelectSeat.jsp?screenid=<%=screenid%>&movieid=<%=movieid%>"> <%=tm%></a>
                                            
					</li>
                                        <%
                                            }
                                        
                                        %>
                                   
					
				</ul>
			</div>
                       <%   }
                        
            }
        }
          catch(Exception ex)
          {
              ex.toString();
          }

            %> 
			
        <div class="movie-date-selection" style="padding: 2em;
                        background-color: #FCFCFC;
                        margin-left: 1.5%;
                        border: 1px solid #eee;">
                        <h2 style="text-align: center;font-weight: bold">TRAILER</h2>
                        <br>
                        
                                    
                  <%
                                                         int id3= Integer.parseInt(request.getParameter("id"));
                                                try{
                                                
                                                   
                                                    ResultSet rs = DBLoader.executeSQL("select * from movies where id="+id3);
                                                    
                                                    if(rs.next())
                                                    {
                                                
                                                    String tr = rs.getString("trailer");  
                                
                                                %>
                        
                                       <iframe width="815" height="400"
                                        src="<%=tr%>">
                                        </iframe>  
                                           <%
            }
        }
          catch(Exception ex)
          {
              ex.toString();
          }

            %> 

                    </div>      
	                   

                </div>
            	<div class="clearfix"></div>
                
	</div>
                                                
    </div>       
		</div>
		 <%@include file="footer.jsp"  %>
				
</body>
</html>