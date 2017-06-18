<%-- 
    Document   : result
    Created on : Jun 11, 2017, 8:23:06 PM
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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
	<link href="boot/css/bootstrap.min.css" rel="stylesheet">
	<link href="boot/css/bootstrap-theme.min.css" rel="stylesheet">
        <link rel="stylesheet" href="boot/css/style.css" type="text/css">
        <link rel="stylesheet" href="boot/css/simple-donut.css" type="text/css">
	<script type="text/javascript" src="jj/jquery-3.0.0.min.js"></script>
	<script type="text/javascript" src="boot/js/bootstrap.min.js"></script>   
        <script type="text/javascript" src="boot/js/simple-donut-jquery.js"></script>
    </head>
    <body style="padding-top:80px">
        <%
        int score = Integer.parseInt(request.getParameter("scr"));
        %>
        <div class="container">
            <div class="col-lg-10 col-sm-10 col-xs-10 col-md-10">
                <div class="panel panel-success">
                    <div class="panel-heading">
                        <div class="panel-title">Your Result</div>
                    </div>
                    <div class="panel-body">
                                <div id="specificChart" class="donut-size">
                                    <div class="pie-wrapper">
                                      <span class="label">
                                        <span class="num"><%=score%>%</span>
                                      </span>
                                      <div class="pie">
                                        <div class="left-side half-circle"></div>
                                        <div class="right-side half-circle"></div>
                                      </div>
                                      <div class="shadow"></div>
                                    </div>
                                </div>
                                <div>
                                    <table class="table table-hover table-striped">
					<thead><td>Evaluation</td></thead>
						<tr><td>0-5</td><td>Below Average</td></tr>
                                                <tr><td>5-7</td><td>Average</td></tr>
                				<tr><td>8-9</td><td>Good</td></tr>
                                                <tr><td>10</td><td>Excellent</td></tr>
                                    </table>            
                                <div>
                                <div>
                                    <a href="home.jsp" class="btn btn-success btn-block">Go to Home Page</a>
                                </div>
                                        
                    </div>
                </div>       

         </div>                             
           
        </div>
                      <script>
                         $(document).ready(function(){
                             var percent = <%=score*10%>
                             updateDonutChart('#specificChart', percent, true);
                         }); 
      
    </script>
    </body>
    <% }
           else{
               response.sendRedirect("index.jsp");
           }

        %>
</html>
