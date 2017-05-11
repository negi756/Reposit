<%-- 
    show addpost form
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="false"%>
<% 
    if(request.getSession(false)!=null){
        
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Sign-Up/Login Form</title>
        <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,300,600' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
   <link rel="stylesheet" href="css/style1.css">

    </head>
    <body>
        
        <!--Form Filed-->

		<div class="form">
      
		
      
			<h1>Add Event Post</h1>
          
			<form action="AddPostAction.jsp" method="post" enctype="multipart/form-data">
          
				
				<div class="field-wrap">
				<label>
					Name Of Event<span class="req">*</span>
				</label>
				<input type="text" name="ename" required autocomplete="off" />
				</div>
        
				<div class="field-wrap">
				<label>
                                     Type of Event<span class="req">*</span>
                                </label>
                                    <input list="typeofevent" name="etype"/>
                                        <datalist id="typeofevent">
                                            <option value="Workshop">Workshop</option>
                                            <option value="Technical">Technical</option>
                                            <option value="Cultural">Cultural</option>
                                            <option value="Sports">Sports</option>
                                            <option value="Management">Management</option>
                                            <option value="Other">Other</option>
                                        
                                        </datalist>
                                </div>
                                
                                <div class="field-wrap">
                                    <input type="file" name="epic" accept="image/*"/>
                                </div>
                                
				<div class="field-wrap">
				<label>
					Event Starting Date (DD/MM/YYYY)<span class="req">*</span>
				</label>
				<input type="text" name="esdate"required autocomplete="off"/>
				</div>
          
				<div class="field-wrap">
				<label>
					Event Ending Date (DD/MM/YYYY)<span class="req">*</span>
				</label>
				<input type="text" name="eedate"required autocomplete="off"/>
				</div>
          
				<div class="field-wrap">
				<label>
					Event Starting Time (HH:MM:SS)<span class="req">*</span>
				</label>
				<input type="text" name="estime"required autocomplete="off"/>
				</div>
         
				<div class="field-wrap">
				<label>
					Event Ending Time (HH:MM:SS)<span class="req">*</span>
				</label>
				<input type="text" name="eetime"required autocomplete="off"/>
				</div>
                                
                                <div class="field-wrap">
				<label>
					Venue<span class="req">*</span>
				</label>
				<input type="text" name="evenue" required autocomplete="off"/>
				</div>
          
				<div class="field-wrap">
				    <textarea name="edescription" rows="5" placeholder="Description" required></textarea>
				</div>
          
				<button type="submit" class="button button-block"/>Post</button>
          
			</form>

                </div>
        
        
			<!-- /form -->
  
		
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/index.js"></script>
    
    </body>
</html>

<%
    }
else{
    response.sendRedirect("login.html");
}

%>