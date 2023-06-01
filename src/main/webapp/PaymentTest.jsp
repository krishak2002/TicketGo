
<%-- 
    Document   : paymentdemo
    Created on : Dec 4, 2021, 11:20:46 AM
    Author     : harpr
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="opt_spot.japneet.database.DBLoader" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        <script src="js/Razorpay.js" type="text/javascript"></script>
        <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
        
               
        <!-- razorpay.com -->
        <script src="https://checkout.razorpay.com/v1/checkout.js"></script>
        <!-- razorpay.com -->
        
      
        
            <%                                        int id=0;
                                                    int showid= 0;
                                                    int movieid= 0;
                                                    int multiplexid= 0;
                                                    int screenid= 0;
                                                    String date= "";
                                                    String tm= "";
                                                         int id3 = Integer.parseInt(request.getParameter("screenid"));
                                                         int id33 = Integer.parseInt(request.getParameter("movieid"));
                                                         
                                                            int val  = Integer.parseInt(request.getParameter("pay"));
                                                        String totalseats=(String) request.getParameter("totalseats");
                                                        
                                                        %>
                                                         <script>
                                                        
                                                      var   total=<%=val%>;  
</script>
        
                                                        
                                                        <%
                                                      
                                                         
                                                try{
                                                    ResultSet rs4 = DBLoader.executeSQL("select * from shows where screens="+id3+" and movie="+id33);
                                                    
                                                    if(rs4.next())
                                                    {
                                                     showid= rs4.getInt("id");
                                                     movieid= rs4.getInt("movie");
                                                     multiplexid= rs4.getInt("multiplex");
                                                     screenid= rs4.getInt("screens");
                                                    date= rs4.getString("date");
                                                     tm= rs4.getString("time");
                                                     
                                                    %>
                                                    
                                                    
                                       <%   }
                        
                                                    }
                                                
                                                  catch(Exception ex)
                                                  {
                                                      ex.toString();
                                                  }

                                                    %> 
                                                    
        <%
                            
            
                      
        %>
                
                   
        
        
    </head>
    <body onload="paymentlogic()">
                            
          <script>
                                                        
                                                         function book()
                                        {
                                           // alert("book");

                                                  var formdata = new FormData();


                                                      formdata.append("showid", <%=showid%>);
                                                      formdata.append("total_amount", <%=val%>);
                                                      formdata.append("totalseats", '<%=totalseats%>');
                                                      formdata.append("date", '<%=date%>');
                                                      formdata.append("screenid", <%=id3%>);
                                                      var url = "./seatsbook";

                                                      fetch(url, {method: "POST", body: formdata})
                                                              .then(response => response.text())
                                                              .then(ans => renderAsHtml(ans));

                                          }

                                              function renderAsHtml(ans)
                                              {
                                                  alert(ans);
                                                  window.location.href = "generateQR.jsp";
                                              }
                                 function paymentlogic()
            {
               
                var options = {
                    "key": "rzp_test_96HeaVmgRvbrfT",
                    "amount": total + "00",
                    "name": "Project Name",
                    "description": "",
                    "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOmghn1er2yRA0yXfMRmroSSpWEdAGNV5KHg&usqp=CAU",
                    "handler": function (response) {

                        if (response.razorpay_payment_id == "" || response.razorpay_payment_id == undefined) {

                            window.location.href = "payment_action?status=failed";
                            // paymentfail(authormobile,"Payment failed!");

                            alert("Payment Failed")

                        } else {
//success

                            //payment success
                            //call your book payment function here
                            book();
                                       
                        }
                    },
                    "prefill": {
                        "name": "",
                        "email": ""
                    },
                    "notes": {
                        "address": ""
                    },
                    "theme": {
                        "color": "#F37254"
                    },
                    "modal": {
                        "ondismiss": function () {
                            $("#statusmodal").modal("show");
                            document.getElementById("status").innerHTML = "Payment failed ! Try again";
                        }
                    }
                };



                var rzp1 = new Razorpay(options);
                rzp1.on('payment.failed', function (response) {
                    console.log("a2");
                    console.log(response.error.code);

                    alert("Payment Failed");


                    // paymentfail(authormobile,"Payment failed!");
                    // rzp1.close();
                    // alert(response.error.code);
                    // alert(response.error.description);
                    // alert(response.error.source);
                    // alert(response.error.step);
                    // alert(response.error.reason);
                    // alert(response.error.metadata.order_id);
                    // alert(response.error.metadata.payment_id);

                });
                rzp1.open();
            }


                                                    </script>

    </body>
</html>

