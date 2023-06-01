 <%@include file="design.jsp" %>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
        <title>JSP Page</title>
        <script>
            var rows=4;
            var cols=4;
            var myarray = new Array(rows);
                for (var i = 0; i < myarray.length; i++)
                {
                    myarray[i] = new Array(cols);
                }
                
                
            
                
            function go(rows,cols)
            {
                var seats = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P','Q'];
                 rows = parseInt(rows);
                 cols = parseInt(cols);
                var h = 0;
                myarray = new Array(rows);
                for (var i = 0; i < myarray.length; i++)
                {
                    myarray[i] = new Array(cols);
                }

                for (var i = 0; i < myarray.length; i++)
                {
                    h=0;
                    for (var j = 0; j < myarray[i].length; j++)
                    {
                        myarray[i][j] = seats[i];
                        h++;
                    }                   
                }
                
                var s = "";
                for (var i = 0; i < myarray.length; i++)
                {
                    h=0;
                    for (var j = 0; j < myarray[i].length; j++)
                    {
                        var id=seats[i]+h;
                        s = s + "<div class=\"box1\"id="+id+" style=\"text-align: center;  \" onclick=\"go2(id)\" > </div>";
                        myarray[i][j]=id;
                        h++;
                    }
                      h = 0;
                    s = s + "<br>";
                }
                s=s+"<img src=\"./images/screen.jpeg\" style=\"width:500px; height:90px\" alt=\"screen\"/>";
                document.getElementById("d1").innerHTML = s;
            }
            
            function go2(id)
            {
                 alert("hello"+id);
                    var newid;
                    rows=document.getElementById("rows").value;
                    cols=document.getElementById("cols").value;
                    for(var i=0;i<rows;i++)
                    {
                        for(var j=0;j<cols;j++)
                        {
                           if(myarray[i][j]===id)
                           {
                                myarray[i][j]=myarray[i][j]+"C";
                            }
                            
                        }
                    if(document.getElementById(id).className==='box1')
                    {
                       
                        
                        document.getElementById(id).className='div1';
                        newid=document.getElementById(id).id+"C";
                        
                        alert(newid);                   
                    }                   
               }
             
            }
            
           function go12()
            {
                var rows=document.getElementById("rows").value;
                var cols=document.getElementById("cols").value;
               go(rows,cols);
                
            }
            function go13()
            {
                  var str=JSON.stringify(myarray);
                  var sname=document.getElementById("sname").value;
                var formdata = new FormData();
                formdata.append("screenname",sname);
                formdata.append("layout", str);
                
                console.log(str);
                var url = "./screenlayout";
                fetch(url, {method: "POST", body: formdata})
                        .then(response => response.text())
                        .then(ans => renderAsHtml(ans));                
            }
            
             function renderAsHtml(ans)
            {
                alert(ans);
            }

        </script>
        
    
        
        
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
           /*
            .square {
                    height: 20px;
                    width: 20px;
                    background-color: greenyellow;
                    background-size: contain;
                    
            }
            */
        </style>
    </head>
    <body style="text-align: center;" onload="go()">
        
      
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" onclick="cl()" data-dismiss="modal" aria-hidden="true">
                                &times;
                            <script> 
                                function cl()
                                {
                                window.location.href = "multiplex_dashboard/dashboard.jsp";  
                            }
                            </script>
                            </button>
                            <div class="modal-title" id="myModalLabel">
                                SCREEN LAYOUT
                                <br><br>
                                <div class="row">
                                
                                <span class="col-sm-4"> Screen Name <input type="text" id="sname"/></span>
                              
                                <span class="col-sm-4"> Rows <input type="text" id="rows"/></span>
                               
                            <span class="col-sm-4"> Columns <input type="text" id="cols"/></span>
                                </div>
                            <br>
                            <button type="button"  class="btn btn-info col-sm-4"style="margin-right:15px" onclick="go12()">View Layout</button>
                            <button type="button"  class="btn btn-info col-sm-4" onclick="go13()">save Layout</button>
                            <br><br>
                            </div>
                        </div>
                        <div class="modal-body overflow">
                            <div class="row">
                                <div class="col-md-12" ">
                                    
                                    
                                    
       <div id="d1"  style="text-align: center; padding-top: 10px" >
            Answer shown 
            
        </div>
        
                                    
         </div>
                        </div>
                    </div>
                </div>
            </div>
            <script>
                $('#myModal').modal('show');
            </script>
        </div>
        <div class="clearfix"></div>
                     
                                
                                
                            
                            
                                    
    </body>
</html>


<!--
        
        <div class="box"id="d1" style="text-align: center; margin-top: 100px">
            
        </div>
        -->