 <%@include file="design.jsp" %>
 <script>
               function go2()
            {
                var nm = document.getElementById("nm").value;
                var em = document.getElementById("em").value;
                var mb = document.getElementById("mb").value;
                var ps = document.getElementById("ps").value;
                var ad = document.getElementById("ad").value;
                var ct = document.getElementById("ct").value;
                var st = document.getElementById("st").value;
                var country = document.getElementById("country").value;
                var sc = document.getElementById("sc").value;
                var f1 = document.getElementById("f1").files[0];

                if (nm==="" || em==="" || mb==="" ||ps==="" ||ad==="" ||ct==="" ||st==="" ||country===""||sc==="")
                {
                        alert("Please Enter All Fields");
                }  
                
                else if(document.getElementById("f1").files.length === 0)
                {
                    alert("Please Upload Picture");                   
                }   
                
        
                else {
                    var formdata = new FormData();

                    formdata.append("nm", nm);
                    formdata.append("em", em);
                    formdata.append("mb", mb);
                    formdata.append("ps", ps);
                     formdata.append("ad", ad);
                      formdata.append("ct", ct);
                     formdata.append("st", st);
                      formdata.append("country", country);
                      formdata.append("sc", sc);
                    formdata.append("f1", f1);

                    var url = "./multisignup";

                    fetch(url, {method: "POST", body: formdata})
                            .then(response => response.text())
                            .then(ans => renderAsHtml(ans));

                    function renderAsHtml(ans)
                    {
                        alert(ans);
                    }
                }
            }
            
            
              function go4()
            {
                var em1 = document.getElementById("em1").value;
                var ps1 = document.getElementById("ps1").value;

                 if ( em1===""||ps1==="")
                {
                        alert("Please Enter All Fields");
                }  
                else{
                    var url = "./multilogin?em1="+ em1 +"&ps1="+ps1;

                    fetch(url)
                            .then(response => response.text())
                            .then(ans => renderAsHtml2(ans));
                }
            }       
                    function renderAsHtml2(ans)
                    {   
                        if(ans==="true")
                        {   
                            alert("LOGIN SUCCESS");
                             //popup modal close
                             $('#myModal').modal('hide');
                              window.location.href = "multiplex_dashboard/dashboard.jsp";
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
                
            
     
 </script>
 
 
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;</button>
                            <h4 class="modal-title" id="myModalLabel">
                                Don't Wait, Login now!</h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-8" style="border-right: 1px dotted #C2C2C2;padding-right: 30px;">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#Login" data-toggle="tab">Login</a></li>
                                        <li><a href="#Registration" data-toggle="tab">Registration</a></li>
                                    </ul>
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="Login">
                                            <form role="form" class="form-horizontal">
                                                <div class="form-group">
                                                    <label for="em1" class="col-sm-2 control-label">
                                                        Email</label>
                                                    <div class="col-sm-10">
                                                        <input type="email" class="form-control" id="em1" placeholder="Email" />
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="ps1" class="col-sm-2 control-label">
                                                        Password</label>
                                                    <div class="col-sm-10">
                                                        <input type="password" class="form-control" id="ps1" placeholder="password" />
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-2">
                                                    </div>
                                                    <div class="col-sm-10">
                                                         <input type="button" value=" Submit" class="btn btn-primary btn-sm" onclick="go4()">
                                                        <a href="javascript:;">Forgot your password?</a>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="tab-pane" id="Registration">
                                            <form role="form" class="form-horizontal">
                                                <div class="form-group">
                                                    <label for="nm" class="col-sm-2 control-label">
                                                       Multiplex Name</label>
                                                    <div class="col-sm-10">                                                                                   
                                                        <input type="text" class="form-control" id="nm" placeholder="Name" required/>                                                                                                       
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="em" class="col-sm-2 control-label">
                                                        Email</label>
                                                    <div class="col-sm-10">
                                                        <input type="email" class="form-control" id="em" placeholder="Email" required/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="mb" class="col-sm-2 control-label">
                                                        Mobile</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="mb" placeholder="mobile" required/>
                                                    </div>
                                                </div>
                                                 <div class="form-group">
                                                    <label for="ps" class="col-sm-2 control-label">
                                                        Create Password</label>
                                                    <div class="col-sm-10">
                                                        <input type="password" class="form-control" id="ps" placeholder="Password" required/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="ad" class="col-sm-2 control-label">
                                                        Address</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="ad" placeholder="address" required/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="ct" class="col-sm-2 control-label">
                                                        City</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="ct" placeholder="city" required/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="stt" class="col-sm-2 control-label">
                                                        State</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="st" placeholder="State" required/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="country" class="col-sm-2 control-label">
                                                        Country</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="country" placeholder="country" required/>
                                                    </div>
                                                </div>
                                                
                                                <div class="form-group">
                                                    <label for="sc" class="col-sm-2 control-label">
                                                        no of screens</label>
                                                    <div class="col-sm-10">
                                                        <input type="text" class="form-control" id="sc" placeholder="Screens" required/>
                                                    </div>
                                                </div>                                                                                               
                                                
                                                <div class="form-group">
                                                    <label for="f1" class="col-sm-2 control-label">
                                                        Choose Photo</label>
                                                    <div class="col-sm-10">
                                                        <input type="file" class="form-control" id="f1" required />
                                                    </div>
                                                </div>
                                               
                                                <div class="row">
                                                    <div class="col-sm-2">
                                                    </div>
                                                    <div class="col-sm-10">
                                                        <input type="button" value=" Save & Continue" class="btn btn-primary btn-sm" onclick="go2()">
                                                           
                                                        <input type="button" value=" cancel" class="btn btn-primary btn-sm" ">
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div id="OR" class="hidden-xs">
                                        OR</div>
                                </div>
                                <div class="col-md-4">
                                    <div class="row text-center sign-with">
                                        <div class="col-md-12">
                                            <h3 class="other-nw">
                                                Sign in with</h3>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="btn-group btn-group-justified">
                                                <a href="#" class="btn btn-primary">Facebook</a> <a href="#" class="btn btn-danger">
                                                    Google +</a>
                                            </div>
                                        </div>
                                    </div>
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
                     
                                
                                
                            </ul>  
