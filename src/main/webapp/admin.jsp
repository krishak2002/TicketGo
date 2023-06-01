 <%@include file="design.jsp" %>
 <script>
            
              function go4()
            {
                var em1 = document.getElementById("em1").value;
                var ps1 = document.getElementById("ps1").value;

                 if ( em1===""||ps1==="")
                {
                        alert("Please Enter All Fields");
                }  
                else{
                    var url = "./adminlogin?em1="+ em1 +"&ps1="+ps1;

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
                              window.location.href = "multiplex_dashboard/AdminDashboard.jsp";
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
