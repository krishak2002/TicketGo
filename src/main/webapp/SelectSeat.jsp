
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

<style>
      .box1 {
                height: 40px;
                width: 40px;
                margin-bottom:  15px;
                margin-right:  15px;
                border: 1px none black;
                display: inline-block;
                background-size: contain;
                background-image:url(./images/chair.png);
            }
            .div1
            {
                 height: 40px;
                width: 40px;
                margin-bottom:  15px;
                margin-right:  15px;
                border: 1px none black;
                display: inline-block;
                background-size: contain;
                /*background-image:url(./images/chair1.png);*/
                
            }
            .div2
            {
                 height: 40px;
                width: 40px;
                margin-bottom:  15px;
                margin-right:  15px;
                border: 1px none black;
                display: inline-block;
                background-size: contain;
                background-image:url(./images/chair2.png);
                
            }
             .div3
            {
                 height: 40px;
                width: 40px;
                margin-bottom:  15px;
                margin-right:  15px;
                border: 1px none black;
                display: inline-block;
                background-size: contain;
                background-image:url(./images/chair1.png);
                
            }
    
</style>

<script>
            var totalseats;
        var sum=0;
        var ssarr = new Array();
        var n=0;
    
</script>


<%
                                                          int id4 = Integer.parseInt(request.getParameter("screenid"));
                                                         int id44 = Integer.parseInt(request.getParameter("movieid"));
                                                         
                                                         %>
                                                         
                                                         <script>
                                                              function go()
                                                                {
                                                                    window.location.href="movie-payment.jsp?screenid="+<%=id4%>+"&movieid="+<%=id44%>+"&sum="+sum+"&totalseats="+totalseats+"&n="+n;
                                                                }
                                                                
                                                             
                                                             
                                                             
                                                         </script>
                                                         
                                                         <%
                                                         
                                                try{
                                                    ResultSet rs6 = DBLoader.executeSQL("select * from shows where screens="+id4+" and movie="+id44);
                                                    
                                                    if(rs6.next())
                                                    {
                                                     int showid= rs6.getInt("id");
                                                    int screenid= rs6.getInt("screens");
                                                    
                                                    ResultSet rs7 = DBLoader.executeSQL("select * from booking where screen="+screenid+" and show_id="+showid);
                                                    while(rs7.next())
                                                    {
                                                        int id=rs7.getInt("id");
                                                        ResultSet rs8 = DBLoader.executeSQL("select * from booking_details where bookid="+id);
                                                        while(rs8.next())
                                                        {
                                                            String ss=rs8.getString("seat");
                                                            %>
                                                            
                                                            <script>
                                                                var ss='<%=ss%>';
                                                                ssarr.push(ss);
                                                                
                                                               
                                                            </script>
                                                            
                                                            <%
                                                        }
    
                                                    }
                                                    
                                                    
                                                    %>
                                                    
               <%   }
                        
                                                    }
                                                
                                                  catch(Exception ex)
                                                  {
                                                      ex.toString();
                                                  }

                                                    %> 

    <script>
//alert(ssarr);

 function preview(layout)
      {  
          
          var ans="";
         // alert(layout);
         
                                var gfg =  JSON.parse(layout);
             for (var j = 0; j <gfg.length; j++) {

        for (var k = 0; k < gfg[j].length; k++)    {
            
//            document.write(gfg[i][j] + " ");
            var s = gfg[j][k];
          // alert(s);
            
          
            if(gfg[j][k].at(-1)==='C')
            {
                ans= ans+ "<div class='div1'></div>";
            }
            else if(ssarr.includes(s,0) )
            {
                //alert("hi");
                ans= ans+ "<div class='div3'></div>";
            }
            else{
                ans=ans+"<div class='box1' id="+s+" onclick=\"select(id)\"></div>";
            }
            }
//        document.write("<br>");
ans = ans+"<br>";
    } 
    ans = ans+"<br>";
     ans=ans+"<img src=\"./images/screen.jpeg\" style=\"width:500px; height:90px\" alt=\"screen\"/>";
     ans = ans+"<br>";
                document.getElementById("myans").innerHTML = ans;
      }
      
      
      function select(s)
      {
           document.getElementById(s).className='div2';
           alert(s);
           var num=s.at(0);
           if(num==='A' || num==='B' || num==='C')
            {
                sum+=120;
            }
             else if(num==='D' || num==='E' || num==='F')
             {
                sum+=110;
            }
            else{
                sum+=100;
            }
            alert(sum);
            
                      // var newid=document.getElementById(s).id+"S";
                        
                    //    alert(newid);  
                    
            totalseats="";
            var ele = document.querySelectorAll(".div2");
            n=ele.length;
            alert(n);
            for(var i=0;i<ele.length;i++)
            {
                totalseats=totalseats+ele[i].id+",";
            }
               alert(totalseats);
               
            var b="";
            b=b+"<input type=\"button\" class=\"btn btn-primary\" value=\"PAYMENT: "+sum+" \"onclick=\"go()\"/>";
            document.getElementById("bt").innerHTML=b;
      }
      
      
        
    </script>
    


</head>

<body style="background-color: white;" >


        <!-- header-section-starts -->
        <div style="background-color: white;  "   > 
            
            
        

        <!-- AddThis Smart Layers END -->
       
                                             
                            <div style="background-color:#003b64; color: white; padding: 15px;text-transform: uppercase;">
                                <%
                                                         int id2 = Integer.parseInt(request.getParameter("screenid"));
                                                         int id22 = Integer.parseInt(request.getParameter("movieid"));
                                                         
                                                         
                                                try{
                                                
                                                   
                                                    ResultSet rs3 = DBLoader.executeSQL("select * from shows where screens="+id2+" and movie="+id22);
                                                    
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
                                
                                <h1 style=" font-weight: bold; text-transform: uppercase;"> <a href="index.jsp"> <img  src="./images/back.png" alt="alt"/> </a> &emsp; <%=moviename%></h1><br> 
                                                     <%
                                                         }
                                                         ResultSet rs = DBLoader.executeSQL("select * from multiplex where id="+multiplexid);
                                                    if(rs.next())
                                                    {
                                                        String multiplexname= rs.getString("multiplexname");

                                                     %>
                                
                                <h3 >&emsp;&emsp;&emsp;&emsp; MULTIPLEX: <%=multiplexname%> &emsp;
                                                    <%
                                                        }
                                                    %>
                                       
                                                    SCREEN: <%=screenid%>&emsp; DATE: <%=dt%>&emsp; SHOW TIMINGS: <%=tm%></h3> 
                            </div>                   
                          
                            
                            
                                                  <%   }
                        
                                                    }
                                                
                                                  catch(Exception ex)
                                                  {
                                                      ex.toString();
                                                  }

                                                    %> 
                                                     <div class="row" style="text-align: center;">
                 <h2 style="text-align: center; font-weight: bold;padding: 5px;margin: 5px;margin-bottom: 5px">SELECT SEATS</h2>
                 
        </div>
                <div style="text-align: center; font-weight: bold;padding: 15px;margin-top: 5px;margin-bottom: 10px" id="bt" class="row"> 
                   
                </div>
                                                     
                                                     
                
                <div class="row">                                     
                 <div class="container"> 
                  <div   id="myans"  style="text-align: center; padding-right:  10px" >
                                         Answer shown 
                    </div>
                 </div>
                </div> 
   
    <%int id5=Integer.parseInt(request.getParameter("screenid"));
       // System.out.println(id5);
        try{
        ResultSet rs5 = DBLoader.executeSQL("select * from screens where id="+id5);
    
                if(rs5.next())
                {
                    String layout= rs5.getString("layout");
               //     System.out.println(layout);
%>
    
    <script>
        preview('<%=layout%>');
        </script>
    
     <%   }
                        
        }

      catch(Exception ex)
      {
          ex.toString();
      }

        %> 

                                                     
                                                     
                                                     
       </div>  
                                                     <div class="clearfix"></div>
                <!--
                <div class="footer" style="background-color:#003b64; color:white; position:fixed;left: 0;bottom: 0;width: 100%;">
            <div class="copy-rights text-center"style="background-color:#003b64; color:white">
            <p>© OPT SPOT. All Rights Reserved | Design by Japneet & Arshdeep</p>
        </div>
                </div>    
                -->
</body>
</html>
