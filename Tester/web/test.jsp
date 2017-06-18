<%-- 
    Document   : test
    Created on : Apr 27, 2017, 7:13:09 PM
    Author     : Narender Singh Negi
--%>

<%@page session="false"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
         <%
           HttpSession hs=request.getSession(false);
           if(hs!=null){
               %>
<!DOCTYPE html>
<html>
    <head>
	<title>Test</title>
	<link href="boot/css/bootstrap.min.css" rel="stylesheet">
	<link href="boot/css/bootstrap-theme.min.css" rel="stylesheet">
        <link rel="stylesheet" href="boot/css/flipclock.css">
	

    </head>
    
    <body style="padding-top:80px">

        
		<div class="container-fluid">
		<!-- navigation bar started-->
			<nav class="navbar navbar-default navbar-fixed-top">
				<div class="container-fluid">
					<div class="navbar-header">	
                                            <a href="home.html" class="navbar-brand brand">TesTER </h3>
					</div>
					
					<ul class="nav navbar-nav navbar-right">
						<li><a href="testExit.html">Exit Test</a></li>
					</ul>
				</div>
			</nav>
			<!-- navigation bar terminated-->
                      
				<div class="col-sm-12 col-lg-12 col-md-12 col-xs-12">
				<div class="col-sm-8 col-lg-8 col-md-8 col-xs-8">
					<div class="panel panel-default">
                                            
                                            <form method="post" id="qa">
							<div class="panel-heading">
								<h1 class="panel-title">
                                                                    <p id="qno"></p>
                                                                </h1>
							</div>
						
							<div class="panel-body">
								<p id="ques"></p>
									<div class="form-check">
									  <label class="form-check-label">
										<input class="form-check-input" type="radio" name="answer" id="Radios1" value="" >
                                                                          </label>
                                                                            <label id="one">
                                                                                
                                                                            </label>
									</div>
									<div class="form-check">
									  <label class="form-check-label">
										<input class="form-check-input" type="radio" name="answer" id="Radios2" value="">
									  </label>
                                                                            <label id="two">
                                                                                
                                                                            </label>
									</div>
									<div class="form-check">
									  <label class="form-check-label">                                                                       
										<input class="form-check-input" type="radio" name="answer" id="Radios3" value="">                                                                                  
									  </label>
                                                                            <label id="three">
                                                                                
                                                                            </label>
									</div>
									<div class="form-check">
									  <label class="form-check-label">                                                                         
										<input class="form-check-input" type="radio" name="answer" id="Radios3" value="">										
									  </label>
                                                                            <label id="four">
                                                                                
                                                                            </label>
									</div>
									
								
							</div>
							<div class="panel-footer">
                                                                <button class="btn btn-warning" id="prev">previous</button>
								<button class="btn btn-success" id="nex">Next</button>
							</div>
                                            </form>                              
						</div>
					</div>
					
				<div class="col-sm-4 col-lg-4 col-md-4 col-xs-4">
					<div class="panel panel-default">
                                		<div class="panel-body">
                					<div class="clock" style="margin:2em;"></div>
							<div class="message"></div>
							<button class="start">Start Clock</button>
						</div>
					</div>
				</div>
			</div>
					
                                                                          
			<!-- instruction modal-->
                        <div class="modal" id="instruct">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h1 class="modal-title">Instructions</h1>
                                        </div>
                                        <div class="modal-body">
                                            <p>1.Total Questions : 10.</p>
                                            <p>2.Total time : 10 min.</p>
                                            <p>3.You can attempt the exam any number of time to improve your score.</p>
                                            <p>.4.Use of Reference material and other websites are prohibited.</p>
                                            <p>Wish you luck!!</p>
                                        </div>
                                        <div class="modal-footer">
                                            <button class="btn btn-warning btn-lg" id="st_modal">Start the Test</button>
                                        </div> 
                                    </div>
                                </div>
                        </div>
                        <!--instruction modal ends-->
		</div>
        <script type="text/javascript" src="jj/jquery-3.0.0.min.js"></script>
	<script type="text/javascript" src="boot/js/bootstrap.min.js"></script>
        <script src="boot/js/flipclock.js"></script>        
        <script type="text/javascript">
            
                var clock;
		var hit=1;
                var answer;
                var score=0;
                        $(document).ready(function() {
                            
                            $("#instruct").modal("show");
                            $('#instruct').modal({
                                backdrop: 'static',
                                keyboard: false
                                });
                            clock = $('.clock').FlipClock(600, {
                            clockFace: 'MinuteCounter',
                            countdown: true,
                            autoStart: false,
                            callbacks: {
                                    stop: function() {
                                            window.location='result.jsp?scr='+score+'';
                                    }
                                }
                        });
                            
    

                    });                             
                          function reset()
                {
                   $(":radio").removeAttr("checked"); 
                }                              
                $("#instruct,#nex").click(function(e){
                    clock.start();
                    $(":radio").removeAttr("checked");
                      e.preventDefault();
                      if(hit>1&&hit<12)
                      {
                          var selection = $(":checked").val();
                        
                          if(selection==answer)
                          {
                              score++;
                              
                          }
                      }
                      if(hit==11)
                            {
                                
                                window.location='result.jsp?scr='+score+'';
                            }
                            
                      var xmlhttp;
                      if(window.XMLHttpRequest)
                      {
                          xmlhttp = new XMLHttpRequest();
                          
                      }
                      else
                      {
                          xmlhttp = new ActiveXObject("Microsoft.XMLHttp");
                      }
                       xmlhttp.onreadystatechange = function(){
                          if(this.readyState===4 && this.status===200)
                          {  
                              $("#qno").text("Question "+hit+"");
                              var obj = JSON.parse(this.responseText);
                              $("#ques").text(obj.question);
                              $("#one").text(obj.option1);
                              $("#two").text(obj.option2);
                              $("#three").text(obj.option3);
                              $("#four").text(obj.option4);
                              $("#Radios1").attr("value",obj.option1);
                              $("#Radios2").attr("value",obj.option2);
                              $("#Radios3").attr("value",obj.option3);
                              $("#Radios4").attr("value",obj.option4);
                              $("#instruct").modal("hide");
                              answer = obj.ans;
                              hit++;
                              $(":radio").removeAttr("checked");
                              reset();
                          }
                      };
                              
                      xmlhttp.open("POST","ques.jsp?tsub=<%=request.getParameter("sub")%>&thit="+hit+"",true);
                      xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
                      xmlhttp.send();
                });
                
        
            </script>
	</body>
        <% }
           else{
               response.sendRedirect("index.jsp");
           }

        %>
</html>
