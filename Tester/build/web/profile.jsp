<%-- 
    Document   : profile
    Created on : May 13, 2017, 6:39:13 PM
    Author     : Narender Singh Negi
--%>

<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="pojodriver.StudentDetail"%>
<%@page import="org.hibernate.criterion.Criterion"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<title>home</title>
	<link href="boot/css/bootstrap.min.css" rel="stylesheet">
	<link href="boot/css/bootstrap-theme.min.css" rel="stylesheet">
	<script type="text/javascript" src="jj/jquery-3.0.0.min.js"></script>
	<script type="text/javascript" src="boot/js/bootstrap.min.js"></script>
        
    </head>
    <body style="padding-top:80px" >
        <%
                String id = (String)session.getAttribute("id");
                ServletContext sc = request.getServletContext();
                SessionFactory sf = (SessionFactory)sc.getAttribute("hibsf");
                Session s = sf.openSession();
                Criteria c = s.createCriteria("pojodriver.StudentDetail");
                Criterion cn1 = Restrictions.eq("email",id);
                c.add(cn1);
                StudentDetail std = (StudentDetail)c.uniqueResult();
                
                if(std!=null){
                %>

		<div class="container-fluid">
		<!-- navigation bar started-->
			<nav class="navbar navbar-default navbar-fixed-top">
				<div class="container-fluid">
					<div class="navbar-header">
						<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#menu">
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
							<span class="icon-bar"></span>
						</button>	
						<a href="home.html" class="navbar-brand brand"> <span class="glyphicon glyphicon-home"></span> </a>
					</div>
					<div class="collapse navbar-collapse" id="menu">
						<ul class="nav navbar-nav">
							<li><a href="profile.html">Profile</a></li>
						</ul>
						<ul class="nav navbar-nav navbar-right">
							<li><a href="test.html">Test</a></li>
							<li class="dropdown">
								<a href="#" data-toggle="dropdown">Settings<span class="caret"></span></a>
								<ul class="dropdown-menu">
									<li> <a href="account.html">Account</a></li>
									<li> <a href="security.html">Security</a></li>
								</ul>
							</li>
							<li> <a href="logout.jsp">Logout</a></li>
						</ul>
					</div>
				</div>
			</nav>
			<!-- navigation bar terminated-->
			<div class="col-sm-12 col-lg-12 col-md-12 col-xs-12">
				<div class="col-sm-9 col-lg-9 col-md-9 col-xs-9">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h1 class="panel-title">Your Details</h1>
						</div>
							<div class="panel-body">
								<table class="table table-hover table-striped" id="info_table">
										<tr><td>Name</td><td>N/A</td></tr>
                                                                                <tr><td>Email</td><td id="imail"><%=std.getEmail()%></td></tr>
										<tr><td>Age</td><td id="iage"><%=std.getAge()%></td></tr>
										<tr><td>College</td><td id="icollege"><%=std.getCollege()%></td></tr>
										<tr><td>Qualification</td><td id="iqual"><%=std.getQualification()%></td></tr>
										<tr><td>Language known</td><td id="ilang"><%=std.getLanguage()%></td></tr>
										<tr><td>Technical Knowledge</td><td id="itech"><%=std.getTechnical()%></td></tr>
								</table>	
								<button type="button" data-toggle="modal" data-target="#detail_editor" class="btn btn-success btn-block">Edit Details</button>
							</div>
						</div>
					</div>
					
				<div class="col-sm-3 col-lg-3 col-md-3 col-xs-3">
					
                                    <div class="field-wrap" data-toggle="tooltip" data-placement="top" title="Change Event pic!">
                                    <input type="file" id="Imagepicker" name='epic' multiple accept="image/*" style="display:none" onchange="changepic()">
                                    <label for="Imagepicker"><img src="image/cover.jpeg" id="imgdisplay" style="width:100%;height:200px"></label>
                                    </div>
				</div>
				
                            <div class="modal" id="detail_editor">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button  type="button" class="close" data-dismiss="modal"> <span>&times;</span> </button>
                                            <h1 class="modal-title">Edit Detail</h1>
                                        </div>
                                        <div class="modal-body">
                                            <form class="form-horizontal" id="editor_form">
                                                <div class="form-group">
                                                    <label for="yourname" class="col-sm-3 control-label">Name</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control" id="naam" name="naam" placeholder="<%=(String)session.getAttribute("name")%>" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="youremail" class="col-sm-3 control-label">Email</label>
                                                    <div class="col-sm-9">
                                                        <input type="email" class="form-control-static" id="eid" name="email" placeholder="<%=(String)session.getAttribute("id")%>" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="yourage" class="col-sm-3 control-label">Age</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control" id="age" name="umar" placeholder="" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="yourcollege" class="col-sm-3 control-label">College</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control" id="colnaam" name="naam" placeholder="" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="yourqualification" class="col-sm-3 control-label">Qualification</label>
                                                    <div class="col-sm-9">
                                                        <select id="qual" class="form-control" name="qualification" required>
                                                            <option value="">Select Qualification</option>
                                                            <option value="Matric">Matric</option>
                                                            <option value="HighSchool">HighSchool</option>
                                                            <option value="Diploma">Diploma</option>
                                                            <option value="Graduation">Graduation</option>
                                                            <option value="PostGraduation">PostGraduation</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="languageKnown" class="col-sm-3 control-label">Language Known</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control" id="lang" name="langknow" placeholder="Use comma to seperate multiple language" required>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="TechnicalKnow" class="col-sm-3 control-label">Technical Language</label>
                                                    <div class="col-sm-9">
                                                        <input type="text" class="form-control" id="techknow" name="techknow" placeholder="Use comma to seperate multiple language" required>
                                                    </div>
                                                </div>
                                                <div class="text-center">
                                                    <input type="submit" class="btn btn-success" value="Submit">
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                </div>
                            </div>
				
			</div>
		</div>
                
                                                   
    <script type="text/javascript">
            
                <% } 
                 else
                {
                %>
                 
                     alert("every thing is not alright");
                     $("detail_editor").modal("show");
                 
                 <%}s.close();%>                          
            
            //query for changing pic
            function changepic() {
            var filetemp = document.getElementById("Imagepicker").files;
            var sss = window.URL.createObjectURL(filetemp[0]);
            $("#imgdisplay").attr("src", sss);
          }
            // query for form submission
            $("#editor_form").submit(function(e){
                e.preventDefault();
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

                       var input = JSON.parse(this.responseText);
                       location.reload();
                    }
                };
                xmlhttp.open("POST","details",true);
                var uage=$("#age").val();
                var ucol=$("#colnaam").val(); 
                var uqual=$("#qual").val();
                var ulang=$("#lang").val();
                var utknow=$("#techknow").val();
                xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
                xmlhttp.send("age="+uage+"&college="+ucol+"&qualification="+uqual+"&language="+ulang+"&technical="+utknow);
            });
        

            </script>
	</body>
</html>
