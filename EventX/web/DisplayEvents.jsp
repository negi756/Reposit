<%-- 
    Document   : DisplayEvents
    Created on : Feb 12, 2017, 12:25:06 AM
    Author     : sureaj negi
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.*,org.hibernate.criterion.*" %>
<%@page import="hib_beans.*,java.util.*"%>
<%@page session="false"%>
<%
    HttpSession hs=request.getSession(false);
    String type=request.getParameter("event_type");
    SessionFactory sf=(SessionFactory)application.getAttribute("hibsessionf");
    Session ss=sf.openSession();
    
    Criteria ct=ss.createCriteria("hib_beans.Events");
    Criterion ct1=Restrictions.eq("etype",type);
    ct.add(ct1);
    int size=ct.list().size();
    int max;
    if(request.getParameter("page")==null){
        max=0;
    }
    else{
        max=Integer.parseInt(request.getParameter("page"));
    }
    ct.setFirstResult(max*9);
    ct.setMaxResults((max+1)*9);
    List<Events> e=ct.list();
    

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
    
    <style>
.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 16px;
    font-size: 16px;
    border: none;
    cursor: pointer;
}

.dropbtn:hover, .dropbtn:focus {
    background-color: #3e8e41;
}

.dropdown {
    float: right;
    position: relative;
    display: inline-block;
    
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    overflow: auto;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    right: 0;
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
}

.dropdown a:hover {background-color: #f1f1f1}

.show {display:block;}
</style>

</head>

<body id="page-top">

    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand page-scroll" href="#page-top"><span style="color:red;"><%= type%> Events</span></a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a class="page-scroll" href="index.jsp"><span style="color:black;">Home</span></a>
                    </li>
                    <li>
                        <% if(hs!=null){%>
                                    <a class="page-scroll" href="Profile.jsp"><span style="color:black;">Profile</span></a>
                        <%  }
                            else{ %>
                            <a class="page-scroll" href="login.html"><span style="color:black;">Login/SignUp</span></a>
                        <%        }
                        %>
                    </li>
                    
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
<br/><br/><br/><br/>
    <!--Events starts-->
    
    <div class="container">
        
    <div class="dropdown">
        <button onclick="myFunction()" class="dropbtn">Events</button>
        <div id="myDropdown" class="dropdown-content">
        <a href="DisplayEvents.jsp?event_type=Technical">Technical</a>
        <a href="DisplayEvents.jsp?event_type=Cultural">Cultural</a>
        <a href="DisplayEvents.jsp?event_type=Workshop">Workshop</a>
        <a href="DisplayEvents.jsp?event_type=Sports">Sports</a>
        <a href="DisplayEvents.jsp?event_type=Management">Management</a>
        <a href="DisplayEvents.jsp?event_type=Other">Other</a>
        </div>
    </div>
        <br/><br/><br/><br/>
        <div class="row">

            
            <div class="col-md-12">

                <div class="row carousel-holder">

                    <div class="col-md-12">
                        <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                            <ol class="carousel-indicators">
                                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                            </ol>
                            <div class="carousel-inner">
                                <div class="item active">
                                    <img class="slide-image" src="http://placehold.it/800x300" height="800%" width="300%" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="http://placehold.it/800x300" height="800%" width="300%" alt="">
                                </div>
                                <div class="item">
                                    <img class="slide-image" src="http://placehold.it/800x300" height="800%" width="300%" alt="">
                                </div>
                            </div>
                            <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                                <span class="glyphicon glyphicon-chevron-left"></span>
                            </a>
                            <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                                <span class="glyphicon glyphicon-chevron-right"></span>
                            </a>
                        </div>
                    </div>

                </div>
				<br/><br/>
                                
                
                <div class="row">
                <%
                    for(Events es:e){
                     
                %>

                    <div class="col-sm-4 col-lg-4 col-md-4">
                        <div class="thumbnail">
                            <img src="img/eventpic/<%= es.getEpic()%>" style="height:175px;width:350px" alt="">
                            <div class="caption">
                                <h4 class="pull-right">Free</h4>
                                <h4><a href="#"><%= es.getEname()%></a>
                                </h4>
                                <p align="center"><%= es.getEsdate()%> <sapn class="h4">to</sapn> <%= es.getEedate()%></p>
                                <p align="center"><%= es.getEstime()%> <sapn class="h4">to</sapn> <%= es.getEetime()%></p>
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

                <%
                    }
                %>
                   
                </div>

            </div>

        </div>

    </div>
    
    
    <!--Events Ends-->
    <br/>
    <br/>
    <div align="center">
        <% for(int i=0;i<=(size/9);i++){ %>
				<ul class="pagination">
                                    <li><a href="DisplayEvents.jsp?event_type=<%= type%>&page=<%= i%>"><%= (i+1)%></a></li>
				
                                </ul>
        <% } %>                        
    </div>

    <hr/>
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
        /* When the user clicks on the button, 
        toggle between hiding and showing the dropdown content */
        function myFunction() {
        document.getElementById("myDropdown").classList.toggle("show");
        }

        // Close the dropdown if the user clicks outside of it
        window.onclick = function(event) {
        if (!event.target.matches('.dropbtn')) {

            var dropdowns = document.getElementsByClassName("dropdown-content");
            var i;
            for (i = 0; i < dropdowns.length; i++) {
        var openDropdown = dropdowns[i];
            if (openDropdown.classList.contains('show')) {
            openDropdown.classList.remove('show');
      }
    }
  }
};
</script>

</body>

</html>

<%
    ss.close();
%>

