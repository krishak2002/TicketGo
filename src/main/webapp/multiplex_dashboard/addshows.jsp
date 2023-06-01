


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="opt_spot.japneet.database.DBLoader" %>




<!DOCTYPE HTML>
<html>
<head>
<title>MULTIPLEX DASHBOARD</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Novus Admin Panel Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
SmartPhone Compatible web template, free WebDesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<!-- font CSS -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons -->
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>
<!--webfonts-->
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,300,300italic,400italic,700,700italic' rel='stylesheet' type='text/css'>
<!--//webfonts--> 
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
<!--//end-animate-->
<!-- chart -->
<script src="js/Chart.js"></script>
<!-- //chart -->
<!--Calender
<link rel="stylesheet" href="css/clndr.css" type="text/css" />
<script src="js/underscore-min.js" type="text/javascript"></script>
<script src= "js/moment-2.2.1.js" type="text/javascript"></script>
<script src="js/clndr.js" type="text/javascript"></script>
<script src="js/site.js" type="text/javascript"></script>
-->
<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->

<script>
    function add()
            {
                var nm = document.getElementById("nm").value;
                var mn = document.getElementById("mn").value;
                var sc = document.getElementById("sc").value;
                var dt = document.getElementById("dt").value;
                var tm = document.getElementById("tm").value;

                if (nm==="" || mn==="" || sc==="" ||dt==="" ||tm==="" )
                {
                        alert("Please Enter All Fields");
                }  
        
                else {
                    var formdata = new FormData();

                    formdata.append("nm", nm);
                    formdata.append("mn", mn);
                    formdata.append("sc", sc);
                    formdata.append("dt", dt);
                    formdata.append("tm", tm);

                    var url = "../shows";

                    fetch(url, {method: "POST", body: formdata})
                            .then(response => response.text())
                            .then(ans => renderAsHtml(ans));
                }
                
    }
                    function renderAsHtml(ans)
                    {
                        alert(ans);
                        if(ans==="SUCCESS")
                        {    
                            alert("show added");
                             window.location.href = "viewshows.jsp";
                        }
                        else
                        {
                            //redirect
                            alert("fail");
                            
                        }
                    }
                
                
            
             
</script>

</head> 
<body class="cbp-spmenu-push">
	<div class="main-content">
		<!--left-fixed -navigation-->
		<div class=" sidebar" role="navigation">
            <div class="navbar-collapse">
				<nav class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
					<ul class="nav" id="side-menu">
						<li>
							<a href="dashboard.jsp" ><i class="fa fa-home nav_icon"></i>Dashboard</a>
						</li>
						<li>
							<a href="viewscreen.jsp" ><i class="fa fa-th-large nav_icon"></i>View Screen </a>
							
						</li>
						<li >
							<a href="addshows.jsp" class="active"><i class="fa fa-th-large nav_icon"></i>Add Shows</a>							
						</li>
						  <li>
							<a href="viewshows.jsp" ><i class="fa fa-th-large nav_icon"></i>View Shows</a>							
						</li>
					</ul>
					<!-- //sidebar-collapse -->
				</nav>
			</div>
		</div>
		<!--left-fixed -navigation-->
		<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-left">
				<!--toggle button start-->
				<button id="showLeftPush"><i class="fa fa-bars"></i></button>
				<!--toggle button end-->
				<!--logo -->
				<div class="logo">
					<a href="dashboard.jsp">
						<h1>OPT SPOT</h1>
						<span>MULTIPLEX DASHBOARD</span>
					</a>
				</div>
				<!--//logo-->
				<!--search-box-->
				<div class="search-box">
					<form class="input">
						<input class="sb-search-input input__field--madoka" placeholder="Search..." type="search" id="input-31" />
						<label class="input__label" for="input-31">
							<svg class="graphic" width="100%" height="100%" viewBox="0 0 404 77" preserveAspectRatio="none">
								<path d="m0,0l404,0l0,77l-404,0l0,-77z"/>
							</svg>
						</label>
					</form>
				</div><!--//end-search-box-->
				<div class="clearfix"> </div>
			</div>
			<div class="header-right">
				<div class="profile_details_left"><!--notifications of menu start -->
					<ul class="nofitications-dropdown">
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i><span class="badge">3</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 3 new messages</h3>
									</div>
								</li>
								<li><a href="#">
								   <div class="user_img"><img src="images/1.png" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet</p>
									<p><span>1 hour ago</span></p>
									</div>
								   <div class="clearfix"></div>	
								</a></li>
								<li class="odd"><a href="#">
									<div class="user_img"><img src="images/2.png" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
									</div>
								  <div class="clearfix"></div>	
								</a></li>
								<li><a href="#">
								   <div class="user_img"><img src="images/3.png" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
									</div>
								   <div class="clearfix"></div>	
								</a></li>
								<li>
									<div class="notification_bottom">
										<a href="#">See all messages</a>
									</div> 
								</li>
							</ul>
						</li>
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">3</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 3 new notification</h3>
									</div>
								</li>
								<li><a href="#">
									<div class="user_img"><img src="images/2.png" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet</p>
									<p><span>1 hour ago</span></p>
									</div>
								  <div class="clearfix"></div>	
								 </a></li>
								 <li class="odd"><a href="#">
									<div class="user_img"><img src="images/1.png" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
									</div>
								   <div class="clearfix"></div>	
								 </a></li>
								 <li><a href="#">
									<div class="user_img"><img src="images/3.png" alt=""></div>
								   <div class="notification_desc">
									<p>Lorem ipsum dolor amet </p>
									<p><span>1 hour ago</span></p>
									</div>
								   <div class="clearfix"></div>	
								 </a></li>
								 <li>
									<div class="notification_bottom">
										<a href="#">See all notifications</a>
									</div> 
								</li>
							</ul>
						</li>	
						<li class="dropdown head-dpdn">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">15</span></a>
							<ul class="dropdown-menu">
								<li>
									<div class="notification_header">
										<h3>You have 8 pending task</h3>
									</div>
								</li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">Database update</span><span class="percentage">40%</span>
										<div class="clearfix"></div>	
									</div>
									<div class="progress progress-striped active">
										<div class="bar yellow" style="width:40%;"></div>
									</div>
								</a></li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
									   <div class="clearfix"></div>	
									</div>
									<div class="progress progress-striped active">
										 <div class="bar green" style="width:90%;"></div>
									</div>
								</a></li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">Mobile App</span><span class="percentage">33%</span>
										<div class="clearfix"></div>	
									</div>
								   <div class="progress progress-striped active">
										 <div class="bar red" style="width: 33%;"></div>
									</div>
								</a></li>
								<li><a href="#">
									<div class="task-info">
										<span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
									   <div class="clearfix"></div>	
									</div>
									<div class="progress progress-striped active">
										 <div class="bar  blue" style="width: 80%;"></div>
									</div>
								</a></li>
								<li>
									<div class="notification_bottom">
										<a href="#">See all pending tasks</a>
									</div> 
								</li>
							</ul>
						</li>	
					</ul>
					<div class="clearfix"> </div>
				</div>
				<!--notification menu end -->
				<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="images/a.png" alt=""> </span> 
									<div class="user-name">
										<p>Wikolia</p>
										<span>Administrator</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
								<li> <a href="#"><i class="fa fa-user"></i> Profile</a> </li> 
								<li> <a href="#"><i class="fa fa-sign-out"></i> Logout</a> </li>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>				
			</div>
			<div class="clearfix"> </div>	
		</div>
		<!-- //header-ends -->
		<!-- main content start-->
                <div id="page-wrapper">
                    <div class="main-page">
                    <div class="stats-title">
                        <br>
                        <br>
                        
                      
                        
                        
                        <div style="background-color: #4F52BA;padding: 10px; margin: 5px">
                         <form role="form" class="form-horizontal" >
                                                <div class="form-group">
                                                    <label for="nm" class="col-sm-2 control-label"  style="color: white">
                                                        MOVIE NAME</label>
                                                    <div class="col-sm-8">                                                                                   
                                                        <select class="form-control" id="nm">
                                                            <option>--movie id--</option>
                                                            <%  try{
                                                                        ResultSet rs = DBLoader.executeSQL("select id from movies");
                                                                         while(rs.next())
                                                                        {
                                                                            %>
                                                                            <option><%=rs.getInt("id")%></option>
                                                                            <%

                                                                        }
                                                                    }
                                                                catch(Exception ex)
                                                                {
                                                                    ex.toString();
                                                                }   
                                                        %>
                                                        </select>                                                                                                      
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="mn" class="col-sm-2 control-label"  style="color: white">
                                                        MULTIPLEX NAME</label>
                                                    <div class="col-sm-8">
                                                        <select class="form-control" id="mn">
                                                            <option>--multiplex id--</option>
                                                            <%  try{
                                                                        ResultSet rs = DBLoader.executeSQL("select id from multiplex");
                                                                         while(rs.next())
                                                                        {
                                                                            %>
                                                                            <option><%=rs.getInt("id")%></option>
                                                                            <%

                                                                        }
                                                                    }
                                                                catch(Exception ex)
                                                                {
                                                                    ex.toString();
                                                                }   
                                                        %>
                                                        </select> 
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="sc" class="col-sm-2 control-label"  style="color: white">
                                                        SCREEN ID</label>
                                                    <div class="col-sm-8">
                                                        <select class="form-control" id="sc">
                                                            <option>--screen id--</option>
                                                            <%  try{
                                                                        ResultSet rs = DBLoader.executeSQL("select id from screens");
                                                                         while(rs.next())
                                                                        {
                                                                            %>
                                                                            <option><%=rs.getInt("id")%></option>
                                                                            <%

                                                                        }
                                                                    }
                                                                catch(Exception ex)
                                                                {
                                                                    ex.toString();
                                                                }   
                                                        %>
                                                        </select> 
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="dt" class="col-sm-2 control-label"  style="color: white">
                                                        RELEASE DATE</label>
                                                    <div class="col-sm-8">
                                                        <input type="date" class="form-control" id="dt" placeholder="Password" required/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="tm" class="col-sm-2 control-label"  style="color: white">
                                                        TIME SLOT</label>
                                                    <div class="col-sm-8">
                                                        <input type="time" class="form-control" id="tm" placeholder="Confirm Password" required/>
                                                    </div>                                       
                                                </div>
                                                
                                                <div class="row">
                                                    <div class="col-sm-4">
                                                    </div>                                    
                                                    
                                                    <div class="col-sm-4">
                                                        <input type="button" value=" SUBMIT" class="btn  btn-sm form-control" onclick="add()"/>
                                                           
                                                       
                                                    </div>
                                                </div>
                                            </form>
                        </div>
                                                
                                                
                    </div>
                    </div>
                </div>      
                       
		<!--footer-->
		<div class="footer">
		   <p>&copy; OPT SPOT. All Rights Reserved | Design by Japneet & Arshdeep</p>
		</div>
        <!--//footer-->
	</div>
	<!-- Classie -->
        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;</button>
                            <div class="modal-title" id="myModalLabel">
                                Screen layout <br>
                                
                            </div>
                        </div>
                        <div class="modal-body overflow">
                            <div class="row">
                                <div class="col-md-12" ">                      
                                    <div id="ans"  style="text-align: center; padding-right:  10px" >
                                         Answer shown 

                                     </div>

                                    
                                </div>
                        </div>
                    </div>
                </div>
            </div>
            
            <!--
            <script>
                $('#myModal').modal('show');
            </script>
            -->
        </div>
        <div class="clearfix"></div>
                     
                                
                                
        
        
        
        
        
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			

			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.js"> </script>
</body>
</html>