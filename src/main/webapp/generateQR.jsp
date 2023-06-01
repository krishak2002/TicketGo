

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="opt_spot.japneet.database.DBLoader" %>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <script src="https://cdnjs.cloudflare.com/ajax/libs/qrcodejs/1.0.0/qrcode.min.js"></script>
        <title>Booking Success</title>
        <%
            int id=0;
              ResultSet rs2=DBLoader.executeSQL("select max(id) from booking");
                                                          
                                                            if(rs2.next())
                                                            {
                                                                id=rs2.getInt("max(id)");

                                                            }
        %>
         <style>
        h1, h3 {
          color: green;
        }
        body, header {
            height: 100%;
          display: flex;
          flex-direction: column;
          justify-content: center;
          align-items: center;
        }
       
    </style>
    </head>
    <body onload="view()"> 
        <h1 id="name"></h1>
       <div id="qrcode"></div>
       <img id="photo">
       <h3 id="seats"></h3>
       <script>
           var ans="";
           var ans1="";
           function view()
{
    
     var xhttp = new XMLHttpRequest();
           
  xhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
         alert(this.response);
         var mainobj = JSON.parse(this.response);
         var ar = mainobj["ans"];
         ans1+= "Email:"+" "+mainobj["email"]+"\n";
         ans1+="Booking id:"+mainobj["id"]+"\n";
         ans1+="Movie Name:"+mainobj["moviename"]+"\n";
         ans1+="Multiplex Name:"+mainobj["multiplex"]+"\n";
         for(var i=0; i<ar.length; i++)
         {
             var obj = ar[i];
             alert(ar.length);
//          console.log(localStorage.getItem("myarray"));
            ans+=obj["seat"]+",";
               
                ans1+= "Seat No:"+" "+obj["seat"]+",";
            
             
         }
         qrco();
        document.getElementById("name").innerHTML = mainobj["multiplex"];
          document.getElementById("seats").innerHTML = "Seat No: "+ans;
    }
  };
  xhttp.open("GET", "./viewbooking?id=<%=id%>", true);
  xhttp.send();
}
//            function downloadURI(uri, name) {
//  var link = document.createElement("a");
//  link.download = name;
//  link.href = uri;
//  document.body.appendChild(link);
//  link.click();
//  document.body.removeChild(link);
//  delete link;
//};

function qrco()
{
  console.log('onload');
  let qrcode = new QRCode(document.getElementById("qrcode"),
             {
              text: ans1,
              width: 450,
              height: 450,
              colorDark : "#000000",
              colorLight : "#ffffff",
              correctLevel : QRCode.CorrectLevel.H
            });  
  setTimeout(
    function ()
    {
        let dataUrl = document.querySelector('#qrcode').querySelector('img').src;
        console.log(dataUrl);
//        downloadURI(dataUrl, 'qrcode.png');
      saveqr(dataUrl);
//        document.getElementById("photo").src = dataUrl;
    }
    ,1000);

}
function saveqr(data)
{
     var xhttp = new XMLHttpRequest();
            var formdata = new FormData();
            formdata.append("id",<%=id%>);
              formdata.append("qr",data);
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
         alert(this.response);
         var res= this.response.trim();
         if(res === "success")
         {
            
             alert("success");
         }
    }
  };
  xhttp.open("POST", "./saveQR", true);
  xhttp.send(formdata);
}
        
       </script>
    </body>
</html>