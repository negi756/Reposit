<!--
    Profile page
-->

<%@page session="false"%>
<%@page import="hib_beans.*"%>
<%@page import="org.hibernate.*,org.hibernate.criterion.*" %>
<%@page import="java.util.*" %>
<%
    HttpSession hs=request.getSession(false);
    if((hs!=null)&&(hs.getAttribute("uid")!=null)){
        SessionFactory sf=(SessionFactory)application.getAttribute("hibsessionf");
        Session ss=sf.openSession();
        Criteria ct=ss.createCriteria("hib_beans.User");
        Criterion cr=Restrictions.eq("uid",hs.getAttribute("uid"));
        ct.add(cr);
        User u=(User)ct.uniqueResult();

%>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    
    <title>EventX</title>

    <!-- Bootstrap Core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Theme CSS -->
    <link href="css/creative.min.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top">
    
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top">EventX</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="index.jsp">Home</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="Logout.jsp">Logout</a>        
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <header>
        <div class="header-content">
            <div class="header-content-inner">
                <div class="col-lg-12">
                    <form id='uploadImage' action='UploadDP.jsp' method='post' enctype='multipart/form-data'>
                    <input type="file" id="fileElem" name='photo' multiple accept="image/*" style="display:none" onchange="updateSize()">
                    <label for="fileElem"><img class="img-responsive center-block img-rounded" id="change1" src="img/pro/<%= u.getUpic()%>" style="height:200px;width:300px" alt="UserProfile"></label>
                    </form>            
                                <div class="intro-text">
                                <h2><% out.println(u.getUfname()+" "+u.getUlname()); %></h2>
                                <hr>
                                <br/><br/>
                                <div class="col-lg-12">
                                    <a href="AddPost.jsp" class="btn btn-primary btn-xl page-scroll" role="button" style="margin-right:25px;margin-bottom:10px;">Add Post</a>
                                
                                    <a href="EditProfile.jsp" class="btn btn-primary btn-xl page-scroll" role="button" style="margin-right:25px;margin-bottom:10px;">Edit Profile</a>
                                </div>
                                </div>
				
            </div>
        </div>
    </header>
    
    <!-- Events posted by user start-->                            
    <h2 align="center">Events posted by you:</h2>
    <%
        Criteria ct1=ss.createCriteria("hib_beans.Events");
        Criterion cr1=Restrictions.eq("uid",hs.getAttribute("uid"));
        ct1.add(cr1);
        int size=ct1.list().size();
        int max;
        if(request.getParameter("page")==null){
            max=0;
            }
        else{
            max=Integer.parseInt(request.getParameter("page"));
            }
        ct1.setFirstResult(max*9);
        ct1.setMaxResults((max+1)*9);
        List<Events> e=ct1.list();
%>
    <div class="container">
    <div class="row">
                <%
                    for(Events es:e){
                    String str="data"+es.getEid();
                %>
                    <div class="<%= str%>">
                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="img/eventpic/<%= es.getEpic()%>" style="height:175px;width:350px" alt="">
                            <div class="caption">
                                <button class="btn btn-danger pull-right" onclick='myDel("<%= es.getEid()%>")'>Delete</button>
                                <h4><%= es.getEname()%></h4><br/>
                                <p align="center"><%= es.getEsdate()%><span class="h4"> to </span><%= es.getEedate()%> </p>
                                <p align="center"><%= es.getEstime()%> <span class="h4"> to </span> <%= es.getEetime()%></p>
                                <p align="center"><%= es.getEdescription()%></p>
                            </div>
                            <div class="ratings">
                                <p class="pull-right">15 reviews</p>
                                <p>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                    <span class="glyphicon glyphicon-star"></span>
                                </p>
                            </div>
                        </div>
                    </div>
                    </div>
                <%
                    }
                %>
                   
                </div>
    </div>

    
    <!-- Events posted by users Ends-->
    
    <!--Pagination start-->
        <div align="center">
        			<ul class="pagination">
                                    <% for(int i=0;i<=(size/9);i++){ %>
	
                                    <li><a href="Profile.jsp?page=<%= i%>"><%= (i+1)%></a></li>
                                    <% } %>
                                </ul>
                                                    
    </div>

    <!--Pagination End-->
    
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <h2 class="section-heading">Let's Get In Touch!</h2>
                    <hr class="primary">
                    <p>Ready to start your next event with us? That's great! Give us a call or send us an email and we will get back to you as soon as possible!</p>
                </div>
                <div class="col-lg-4 col-lg-offset-2 text-center">
                    <i class="fa fa-phone fa-3x sr-contact"></i>
                    <p>123-456-6789</p>
                </div>
                <div class="col-lg-4 text-center">
                    <i class="fa fa-envelope-o fa-3x sr-contact"></i>
                    <p><a href="mailto:your-email@your-domain.com">EventX@gmail.com</a></p>
                </div>
            </div>
        </div>
    </section>

    <!-- jQuery -->
    <script src="vendor/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="vendor/bootstrap/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Theme JavaScript -->
    <script src="js/creative.min.js"></script>
    
    <script>
    window.URL = window.URL || window.webkitURL;
    
    function myDel(v){
      var xhttp=new XMLHttpRequest();
      var v1=".data"+v;
      xhttp.onreadystatechange=function(){
      if(this.readyState==4&&this.status==200){
        $(v1).hide();
    
        }  
        };
      if(confirm("Delete the selected event!")==true){
           
        xhttp.open("GET","delete?eid="+v,true);
        xhttp.send(); 
      }
      else{
          
      }
      
      };
      
    function updateSize(){
        oFiles = document.getElementById("fileElem").files;
 //Preventing the default behavior of the form 
 //Because of this line the form will do nothing i.e will not refresh or redirect the page 
 //e.preventDefault();
        var vv=$("#uploadImage");
        var fd=new FormData();
        fd.append("upic",oFiles[0]);
 //Creating an ajax method
        $.ajax({
 
 //Getting the url of the uploadphp from action attr of form 
 //this means currently selected element which is our form 
        url: vv.attr('action'),
 
 //For file upload we use post request
        type: "POST",
 
 //Creating data from form 
        data: fd,
 
 //Setting these to false because we are sending a multipart request
        contentType: false,
        cache: false,
        processData: false,
        success: function(data){
 //If the request is successfull we will get the scripts output in data variable 
 //Showing the result in our html element 
        
        var sss=window.URL.createObjectURL(oFiles[0]);
        $("#change1").attr("src",sss);
        },
        error: function(){
            alert("Unable to update");
        }
        });
    };

    </script>

    <%
        ss.close();
        }
    else{
        response.sendRedirect("login.html");
    }
    %>

</body>

</html>
