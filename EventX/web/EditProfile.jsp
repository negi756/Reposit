<!--
    Edit user Profile details.
-->

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="org.hibernate.*"%>
<%@page import="hib_beans.*"%>
<%@page session="false" %>

<%  HttpSession hs=request.getSession(false);
        if(hs!=null){
        String email=(String)hs.getAttribute("email");
        String pass=(String)hs.getAttribute("pass");
    %>
    
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Sign-Up/Login Form</title>
  <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
   <link rel="stylesheet" href="css/style1.css">

  
</head>

<body>
    
    <%
        
        SessionFactory sf=(SessionFactory)application.getAttribute("hibsessionf");
        Session ss=sf.openSession();
        String hql="from User where uid="+hs.getAttribute("uid");
        Query q=ss.createQuery(hql);
        User u=(User)q.uniqueResult();
        

    %>
    
  <div class="form">   
          <h1>Edit Profile</h1>
          
          <form action="EditProfileAction.jsp" method="post" enctype="multipart/form-data">
          
          <div class="top-row">
            <div class="field-wrap">
              <label>
                <%= u.getUfname() %><span class="req"></span>
              </label>
              <input type="text" name="ufname" />
            </div>
        
            <div class="field-wrap">
              <label>
                <%= u.getUlname() %><span class="req"></span>
              </label>
              <input type="text" name="ulname"/>
            </div>
          </div>

         <!-- <div class="field-wrap">
            <input type="file" name="upic" accept="image/*"/>
          </div>
          -->
          <div class="field-wrap">
            <label>
              <%= u.getUdob() %><span class="req"></span>
            </label>
            <input type="text" name="udob"/>
          </div>
          
          <div class="field-wrap">
            <label>
              <%= u.getUphone() %><span class="req"></span>
            </label>
            <input type="tel" maxlength="12" name="uphone"/>
          </div>
          
          <div class="field-wrap">
            <label>
              <%= u.getUemail() %><span class="req"></span>
            </label>
            <input type="email" name="uemail" />
          </div>
         
          <div class="field-wrap">
            <label>
              <%= u.getUpass() %><span class="req"></span>
            </label>
            <input type="password" name="upass" />
          </div>
          
          <button type="submit" class="button button-block"/>Submit</button>
          
          </form>

        </div>
        
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>

</body>
</html>

<% ss.close(); }
    else{
        response.sendRedirect("login.html");
    }
%>
