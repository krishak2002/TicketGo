<%-- 
    Document   : index
    Created on : 13-Apr-2023, 12:12:48 pm
    Author     : Hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="opt_spot.japneet.database.DBLoader" %>

<!DOCTYPE html>
<html>
    <head>
        <style>
            .width
            {
                width: 99% !important;
            }          
        </style>
        <title>My Show a Entertainment Category Flat Bootstarp responsive Website Template | Home :: OPT SPOT</title>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- Custom Theme files -->
        <link rel="stylesheet" href="css/menu.css" />
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
        <script>$(document).ready(function () {
                $(".megamenu").megamenu();
            });</script>
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
        <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <!---- start-smoth-scrolling---->
        <script type="text/javascript" src="js/move-top.js"></script>
        <script type="text/javascript" src="js/easing.js"></script>
        <script type="text/javascript">
            jQuery(document).ready(function ($) {
                $(".scroll").click(function (event) {
                    event.preventDefault();
                    $('html,body').animate({scrollTop: $(this.hash).offset().top}, 1200);
                });
            });
        </script>
        <!---- start-smoth-scrolling---->

        <!-- form script -->
        <script>


            function go()
            {
                var nm = document.getElementById("nm").value;
                var em = document.getElementById("em").value;
                var mb = document.getElementById("mb").value;
                var ps = document.getElementById("ps").value;
                var cp = document.getElementById("cp").value;
                var f1 = document.getElementById("f1").files[0];

                if (ps != cp)
                {
                    alert("password is not saame as confirm password");
                } 
                else if (nm==="" || em==="" || mb==="" ||ps==="" ||cp==="" )
                {
                        alert("Please Enter All Fields");
                }  
                
                else if(document.getElementById("f1").files.length === 0)
                {
                    alert("Please Upload File");                   
                }   
                
        
                else {
                    var formdata = new FormData();

                    formdata.append("nm", nm);
                    formdata.append("em", em);
                    formdata.append("mb", mb);
                    formdata.append("ps", ps);
                    formdata.append("f1", f1);

                    var url = "./signup";

                    fetch(url, {method: "POST", body: formdata})
                            .then(response => response.text())
                            .then(ans => renderAsHtml(ans));

                    function renderAsHtml(ans)
                    {
                        alert(ans);
                        if(ans==="SUCCESS")
                        {    
                             //popup modal close
                             $('#myModal').modal('hide');
                        }
                        else
                        {
                            //redirect
                            window.location.href = "index.jsp";
                        }
                    }
                }
                
            }
            
            function go3()
            {
                var em1 = document.getElementById("em1").value;
                var ps1 = document.getElementById("ps1").value;

                 if ( em1===""||ps1==="")
                {
                        alert("Please Enter All Fields");
                }  
                else{
                    var url = "./login?em1="+ em1 +"&ps1="+ps1;

                    fetch(url)
                            .then(response => response.text())
                            .then(ans => renderAsHtml2(ans));
                }
                    function renderAsHtml2(ans)
                    {   
                        if(ans==="true")
                        {   
                            alert("LOGIN SUCCESS");
                             //popup modal close
                             $('#myModal').modal('hide');
                        }
                        else if(ans==="false")
                        {   
                            alert("INCORRECT EMAIL OR PASSWORD");
                        }
                        
                        else
                        {
                            alert(ans);
                            //redirect
                            window.location.href = "index.jsp";
                        }

                        
                    }
                }
            

        </script>


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


        <div class="main-banner" style=" padding-left: 5px">
            <div class="banner width" style="margin-left: 10px;margin-bottom:  15px">
                <section class="slider width">
                    <div class="flexslider">
                        <ul class="slides">
                            <li>
                                <a href="movies.html"> <img src="images/pic_1.jpg"  class="img-responsive" alt="" /></a>
                            </li>
                            <li>
                                <a href="movies.html"> <img src="images/pic_2.jpg" class="img-responsive" alt="" /></a>
                            </li>
                            <li>
                                <a href="events.html"><img src="images/pic_3.jpg" class="img-responsive" alt="" /></a>
                            </li>
                            <li>
                                <a href="plays.html"><img src="images/pic_4.jpg" class="img-responsive" alt="" /></a>
                            </li>
                            <li>
                                <a href="plays.html"><img src="images/pic_5.jpg" class="img-responsive" alt="" /></a>
                            </li>
                        </ul>
                    </div>
                </section>
                <!-- FlexSlider -->
                <script defer src="js/jquery.flexslider.js"></script>
                <link rel="stylesheet" href="css/flexslider.css" type="text/css" media="screen" />
                <script type="text/javascript">
            $(function () {
                SyntaxHighlighter.all();
            });
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "slide",
                    start: function (slider) {
                        $('body').removeClass('loading');
                    }
                });
            });
                </script>
            </div>
            
            
                                        <div class="clearfix"></div>
                                        </div>
        
                                        <div  style="background-color:#003b64; color: white; text-align: center;padding: 15px  ">
                                            <h2>
                                                  RECOMMENDED MOVIES                                               
                                            </h2>
                                            
                                        </div>
       
                                      <div class="review-slider" style=" padding-left: 5px; padding-right: 5px">
                                            <ul id="flexiselDemo1" id="ans">


                                                <%try{
                                                    ResultSet rs = DBLoader.executeSQL("select * from movies");
                                                    int id;
                                                    String nm;                                            
                                                    String ph;
                                                    String date;                                         
                                         
                                                %>

                                                <%
                                                     while(rs.next())
                                             {
                                                id=rs.getInt("id");
                                                nm = rs.getString("moviename");
                                                ph = rs.getString("photo");
                                                date =rs.getString("date");
                                                
                                                %>
                                                <li>
                                                    <a href="movies.html"><img src="<%=ph%>" alt=""/></a>
                                                    <div class="slide-title"><h4><%=nm%> </div>
                                                    <div class="date-city">
                                                        <h5><%=date%></h5>
                                                        <h6>Multi-city</h6>
                                                        <div class="buy-tickets">                                                        
                                                            <a href="movie-select-show.jsp?id=<%=id%>" >BUY TICKETS</a>
                                                        </div>
                                                    </div>
                                                </li>



                                                <%
                                               }
                                          }
                                              catch(Exception ex)
                                              {
                                                  ex.toString();
                                              }
                                             
                                                %> 


                                            </ul>

	
	
	

                                            <script type="text/javascript">
                                                $(window).load(function () {

                                                    $("#flexiselDemo1").flexisel({
                                                        visibleItems: 5,
                                                        animationSpeed: 1000,
                                                        autoPlay: true,
                                                        autoPlaySpeed: 3000,
                                                        pauseOnHover: false,
                                                        enableResponsiveBreakpoints: true,
                                                        responsiveBreakpoints: {
                                                            portrait: {
                                                                changePoint: 480,
                                                                visibleItems: 2
                                                            },
                                                            landscape: {
                                                                changePoint: 640,
                                                                visibleItems: 3
                                                            },
                                                            tablet: {
                                                                changePoint: 800,
                                                                visibleItems: 4
                                                            }
                                                        }
                                                    });
                                                });
                                            </script>
                                            <script type="text/javascript" src="js/jquery.flexisel.js"></script>	
                                        </div>
                                                
                                                 <div  style="background-color:#003b64; color: white; text-align: center; padding: 15px ">
                                            <h2>
                                                  OPT SPOT STREAM --> ENDLESS ENTERTAINMENT ANYTIME ANYWHERE !!                                           
                                            </h2>
                                         
                                        </div>
                                                
                                                <br>    
                                        <div class="footer-top-grid">
                                            <div class="list-of-movies col-md-8">
                                                <div class="tabs">
                                                    <div class="sap_tabs">	
                                                        <div id="horizontalTab" style="display: block; width: 100%; margin: 0px;">
                                                            <ul class="resp-tabs-list">
                                                                <li class="resp-tab-item" aria-controls="tab_item-2" role="tab"><span>Now Playing</span></li>
                                                                <li class="resp-tab-item" aria-controls="tab_item-1" role="tab"><span>Opening This Week</span></li>
                                                                <li class="resp-tab-item" aria-controls="tab_item-0" role="tab"><span>Comming Soon</span></li>
                                                                <div class="clearfix"></div>
                                                            </ul>				  	 
                                                            <div class="resp-tabs-container">
                                                                <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-0">
                                                                    <ul class="tab_img">
                                                                        <li>
                                                                            <div class="view view-first">
                                                                                <a href="movie-select-show.html"> <img src="images/pic-1.jpg" class="img-responsive" alt=""/></a>
                                                                                <div class="info1"> </div>
                                                                                <div class="mask">
                                                                                </div>
                                                                                <div class="tab_desc">
                                                                                    <a href="movie-select-show.html">Book Now</a>
                                                                                    <div class="percentage-w-t-s">
                                                                                        <h5>97</h5>
                                                                                        <p>% <br> Want to see</p>
                                                                                        <div class="clearfix"></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="view view-first">
                                                                                <a href="movie-select-show.html"><img src="images/pic-2.jpg" class="img-responsive" alt=""/></a>
                                                                                <div class="info1"> </div>
                                                                                <div class="mask">
                                                                                </div>
                                                                                <div class="tab_desc">
                                                                                    <a href="movie-select-show.html">Book Now</a>
                                                                                    <div class="percentage-w-t-s">
                                                                                        <h5>98</h5>
                                                                                        <p>% <br> Want to see</p>
                                                                                        <div class="clearfix"></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="view view-first">
                                                                                <a href="movie-select-show.html"><img src="images/pic-10.jpg" class="img-responsive" alt=""/></a>
                                                                                <div class="mask">
                                                                                    <div class="info1"> </div>
                                                                                </div>
                                                                                <div class="tab_desc">
                                                                                    <a href="movie-select-show.html">Book Now</a>
                                                                                    <div class="percentage-w-t-s">
                                                                                        <h5>100</h5>
                                                                                        <p>% <br> Want to see</p>
                                                                                        <div class="clearfix"></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <div class="clearfix"></div>
                                                                    </ul>
                                                                </div>	
                                                                <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-1">
                                                                    <ul class="tab_img">
                                                                        <li>
                                                                            <div class="view view-first">
                                                                                <a href="movie-select-show.html"><img src="images/pic-8.jpg" class="img-responsive" alt=""/></a>
                                                                                <div class="mask">
                                                                                    <div class="info1"> </div>
                                                                                </div>
                                                                                <div class="tab_desc">
                                                                                    <a href="movie-select-show.html">Book Now</a>
                                                                                    <div class="percentage-w-t-s">
                                                                                        <h5>92</h5>
                                                                                        <p>% <br> Want to see</p>
                                                                                        <div class="clearfix"></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="view view-first">
                                                                                <a href="movie-select-show.html"> <img src="images/pic-3.jpg" class="img-responsive" alt=""/></a>
                                                                                <div class="mask">
                                                                                    <div class="info1"> </div>
                                                                                </div>
                                                                                <div class="tab_desc">
                                                                                    <a href="movie-select-show.html">Book Now</a>
                                                                                    <div class="percentage-w-t-s">
                                                                                        <h5>100</h5>
                                                                                        <p>% <br> Want to see</p>
                                                                                        <div class="clearfix"></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li class="last">
                                                                            <div class="view view-first">
                                                                                <a href="movie-select-show.html"><img src="images/pic-9.jpg" class="img-responsive" alt=""/></a>
                                                                                <div class="mask">
                                                                                    <div class="info1"> </div>
                                                                                </div>
                                                                                <div class="tab_desc">
                                                                                    <a href="movie-select-show.html">Book Now</a>
                                                                                    <div class="percentage-w-t-s">
                                                                                        <h5>74</h5>
                                                                                        <p>% <br> Want to see</p>
                                                                                        <div class="clearfix"></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <div class="clearfix"></div>
                                                                    </ul>
                                                                </div>	
                                                                <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-2">
                                                                    <ul class="tab_img">
                                                                        <li>
                                                                            <div class="view view-first">
                                                                                <a href="movie-select-show.html"> <img src="images/pic-4.jpg" class="img-responsive" alt=""/></a>
                                                                                <div class="mask">
                                                                                    <div class="info1"> </div>
                                                                                </div>
                                                                                <div class="tab_desc">
                                                                                    <a href="movie-select-show.html">Book Now</a>
                                                                                    <div class="percentage-w-t-s">
                                                                                        <h5>88</h5>
                                                                                        <p>% <br> Want to see</p>
                                                                                        <div class="clearfix"></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="view view-first">
                                                                                <a href="movie-select-show.html"> <img src="images/pic-12.jpg" class="img-responsive" alt=""/></a>
                                                                                <div class="mask">
                                                                                    <div class="info1"> </div>
                                                                                </div>
                                                                                <div class="tab_desc">
                                                                                    <a href="movie-select-show.html">Book Now</a>
                                                                                    <div class="percentage-w-t-s">
                                                                                        <h5>100</h5>
                                                                                        <p>% <br> Want to see</p>
                                                                                        <div class="clearfix"></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li class="last">
                                                                            <div class="view view-first">
                                                                                <a href="movie-select-show.html"><img src="images/pic-5.jpg" class="img-responsive" alt=""/></a>
                                                                                <div class="mask">
                                                                                    <div class="info1"> </div>
                                                                                </div>
                                                                                <div class="tab_desc">
                                                                                    <a href="movie-select-show.html">Book Now</a>
                                                                                    <div class="percentage-w-t-s">
                                                                                        <h5>90</h5>
                                                                                        <p>% <br> Want to see</p>
                                                                                        <div class="clearfix"></div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <div class="clearfix"></div>
                                                                    </ul>
                                                                </div>	
                                                                <div class="tab-1 resp-tab-content" aria-labelledby="tab_item-3">
                                                                    <ul class="tab_img">
                                                                        <li>
                                                                            <div class="view view-first">
                                                                                <a href="movie-select-show.html"> <img src="images/pic-6.jpg" class="img-responsive" alt=""/></a>
                                                                                <div class="mask">
                                                                                    <div class="info1"> </div>
                                                                                </div>
                                                                                <div class="tab_desc">
                                                                                    <a href="movie-select-show.html">Book Now</a>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="view view-first">
                                                                                <a href="movie-select-show.html"> <img src="images/pic-1.jpg" class="img-responsive" alt=""/></a>
                                                                                <div class="mask">
                                                                                    <div class="info1"> </div>
                                                                                </div>
                                                                                <div class="tab_desc">
                                                                                    <a href="movie-select-show.html">Book Now</a>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <li>
                                                                            <div class="view view-first">
                                                                                <a href="movie-select-show.html"> <img src="images/pic-9.jpg" class="img-responsive" alt=""/></a>
                                                                                <div class="mask">
                                                                                    <div class="info1"> </div>
                                                                                </div>
                                                                                <div class="tab_desc">
                                                                                    <a href="movie-select-show.html">Book Now</a>
                                                                                </div>
                                                                            </div>
                                                                        </li>
                                                                        <div class="clearfix"></div>
                                                                    </ul>
                                                                </div>		        					 	        					 
                                                            </div>	
                                                        </div>
                                                    </div>
                                                </div>	
                                                <div class="clearfix"></div>
                                                <div class="featured">
                                                    <div  style="background-color:#003b64; color: white; text-align: center;padding: 15px  ">
                                                        <h2>
                                                            POPULAR EVENTS                                              
                                                        </h2>

                                                    </div>
                                                    <ul>
                                                        <li>
                                                            <div class="f-movie">
                                                                <div class="f-movie-img">
                                                                    <a href="movies.html"><img src="images/f4.jpg" alt="" /></a>
                                                                </div>
                                                                <div class="f-movie-name">
                                                                    <a href="movies.html">Lorem Ipsum used since</a>
                                                                    <p>Multi city</p>
                                                                </div>
                                                                <div class="f-buy-tickets">
                                                                    <a href="movie-select-show.html">BUY TICKETS</a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="f-movie">
                                                                <div class="f-movie-img">
                                                                    <a href="movies.html"><img src="images/f5.jpg" alt="" /></a>
                                                                </div>
                                                                <div class="f-movie-name">
                                                                    <a href="movies.html">looked up one of more</a>
                                                                    <p>Multi city</p>
                                                                </div>
                                                                <div class="f-buy-tickets">
                                                                    <a href="movie-select-show.html">BUY TICKETS</a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="f-movie">
                                                                <div class="f-movie-img">
                                                                    <a href="movies.html"><img src="images/f6.jpg" alt="" /></a>
                                                                </div>
                                                                <div class="f-movie-name">
                                                                    <a href="movies.html">The Live Lorem Ipsum </a>
                                                                    <p>Mumbai</p>
                                                                </div>
                                                                <div class="f-buy-tickets">
                                                                    <a href="movie-select-show.html">BUY TICKETS</a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="f-movie">
                                                                <div class="f-movie-img">
                                                                    <a href="movies.html"><img src="images/f1.jpg" alt=""></a>
                                                                </div>
                                                                <div class="f-movie-name">
                                                                    <a href="movies.html">The standard chunk</a>
                                                                    <p>Multi city</p>
                                                                </div>
                                                                <div class="f-buy-tickets">
                                                                    <a href="movie-select-show.html">BUY TICKETS</a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="f-movie">
                                                                <div class="f-movie-img">
                                                                    <a href="movies.html"><img src="images/f2.jpg" alt=""></a>
                                                                </div>
                                                                <div class="f-movie-name">
                                                                    <a href="movies.html">There are many 'variations'</a>
                                                                    <p>Multi city</p>
                                                                </div>
                                                                <div class="f-buy-tickets">
                                                                    <a href="movie-select-show.html">BUY TICKETS</a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <li>
                                                            <div class="f-movie">
                                                                <div class="f-movie-img">
                                                                    <a href="movies.html"><img src="images/f3.jpg" alt=""></a>
                                                                </div>
                                                                <div class="f-movie-name">
                                                                    <a href="movies.html">The Live Tribute Show</a>
                                                                    <p>Mumbai</p>
                                                                </div>								 
                                                                <div class="f-buy-tickets">
                                                                    <a href="movie-select-show.html">BUY TICKETS</a>
                                                                </div>
                                                            </div>
                                                        </li>
                                                        <div class="clearfix"></div>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="right-side-bar">
                                                <div class="top-movies-in-india">
                                                    <h4>Top Movies in India</h4>
                                                    <ul class="mov_list">
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li>77%</li>
                                                        <li><a href="movie-single.html">Jurassic World (3D) (U/A)</a></li>
                                                    </ul>
                                                    <ul class="mov_list">
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li>80%</li>
                                                        <li><a href="movie-single.html">Jurassic World (3D Hindi) (U/A)</a></li>
                                                    </ul>
                                                    <ul class="mov_list">
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li>69%</li>
                                                        <li><a href="movie-single.html">Dil Dhadakne Do (U/A)</a></li>
                                                    </ul>
                                                    <ul class="mov_list">
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li>65%</li>
                                                        <li><a href="movie-single.html">Hamari Adhuri Kahani (U)</a></li>
                                                    </ul>
                                                    <ul class="mov_list">
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li>83%</li>
                                                        <li><a href="movie-single.html">Premam (U)</a></li>
                                                    </ul>
                                                    <ul class="mov_list">
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li>87%</li>
                                                        <li><a href="movie-single.html">Tanu Weds Manu Returns (U/A)</a></li>
                                                    </ul>
                                                    <ul class="mov_list">
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li>71%</li>
                                                        <li><a href="movie-single.html">Romeo Juliet (U)</a></li>
                                                    </ul>
                                                    <ul class="mov_list">
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li>81%</li>
                                                        <li><a href="movie-single.html">Jurassic World (IMAX 3D) (U/A)</a></li>
                                                    </ul>
                                                    <ul class="mov_list">
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li>80%</li>
                                                        <li><a href="movie-single.html">Jurassic World (2D Hindi) (U/A)</a></li>
                                                    </ul>
                                                    <ul class="mov_list">
                                                        <li><i class="fa fa-star"></i></li>
                                                        <li>89%</li>
                                                        <li><a href="movie-single.html">Kaaka Muttai (U)</a></li>
                                                    </ul>
                                                </div>
                                                <div class="quick-pay">
                                                    <h3>Quick Pay</h3>
                                                    <p class="payText">Make your online payments a breeze. Save your Credit, Debit card and Netbanking in your BookMyShow profile.. <a href="#">Read more</a></p>
                                                </div>
                                                <div class="our-blog">
                                                    <h5>Our Blog</h5>
                                                    <div class="post-article">
                                                        <a href="blog.html" class="post-title">Lorem Ipsum is simply dummy text of the printing</a>
                                                        <i>Posted on June 15, 2015</i>
                                                        <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old...<br> <a href="blog.html">Read more</a></p>
                                                    </div>
                                                    <div class="post-article">
                                                        <a href="blog.html" class="post-title">Sed ut perspiciatis unde</a>
                                                        <i>Posted on June 15, 2015</i>
                                                        <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old...<br> <a href="blog.html">Read more</a></p>
                                                    </div>
                                                    <div class="post-article">
                                                        <a href="blog.html" class="post-title">Sed ut perspiciatis unde</a>
                                                        <i>Posted on June 15, 2015</i>
                                                        <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old...<br> <a href="blog.html">Read more</a></p>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="clearfix"></div>			
                                        </div>
                                         <div class="footer-top-strip">
                                            <p><span>Next Change <i>(Friday, 19 Jun) </i>: </span><a href="movie-single.html">Disney's ABCD 2 (3D) (U)</a>, <a href="movie-single.html"> 2 Premi Premache</a> , <a href="movie-single.html">Dekh Ke (Bhojpuri)</a> , <a href="movie-single.html">Disney's ABCD 2 (2D) (U)</a>, <a href="movie-single.html">Dekh Ke (Bhojpuri)</a></p>
                                            <p><span>Coming Soon :</span><a href="movie-single.html"> 2 Premi Premache</a>, <a href="movie-single.html">Acharam, Dekh Ke (Bhojpuri)</a>, <a href="movie-single.html">Entourage</a>, <a href="movie-single.html">Kuttram Kadithal</a></p>
                                        </div>
                                           
                                        <%@include file="footer.jsp"  %>
                                        
                                       
        </div>
                                        </body>
                                        </html>