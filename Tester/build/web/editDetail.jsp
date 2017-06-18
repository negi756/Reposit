<%-- 
    Document   : editDetail
    Created on : Apr 27, 2017, 11:20:14 PM
    Author     : Narender Singh Negi
--%>

<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="org.json.simple.JSONObject"%>
<%@page import="pojodriver.StudentDetail"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>


<%
    response.setContentType("application/json");
    JSONObject json=new JSONObject();
    ServletContext sc = request.getServletContext();
    String email = (String)session.getAttribute("id");
    String age = request.getParameter("age");
    String college = request.getParameter("college");
    String qualification = request.getParameter("qualification");
    String language = request.getParameter("language");
    String technical = request.getParameter("technical");
    StudentDetail sd = new StudentDetail(email,age,college,qualification,language,technical);
    SessionFactory sf = (SessionFactory)sc.getAttribute("hibsf");
    Session s = sf.openSession();
    Transaction tn = s.beginTransaction();
    s.save(sd);
    tn.commit();
    json.put("mail_id", email);
    json.put("umar", age);
    json.put("college", college);
    json.put("qual",qualification);
    json.put("lang", language);
    json.put("tech", technical);
    out.println(json);
%>
