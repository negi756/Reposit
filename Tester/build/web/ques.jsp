<%-- 
    Document   : ques
    Created on : May 8, 2017, 11:38:03 AM
    Author     : Narender Singh Negi
--%>

<%@page import="pojodriver.QandA"%>
<%@page import="org.hibernate.criterion.Restrictions"%>
<%@page import="org.hibernate.criterion.Criterion"%>
<%@page import="org.hibernate.Criteria"%>
<%@page import="org.json.simple.*;"%>
<%@page import="org.hibernate.Query"%>
<%@page import="org.hibernate.Transaction"%>
<%@page import="org.hibernate.Session"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page pageEncoding="UTF-8"%>
<%
    response.setContentType("application/json");
    JSONObject json=new JSONObject();
    ServletContext sc = request.getServletContext();
    SessionFactory sf = (SessionFactory)sc.getAttribute("hibsf");
    Session s = sf.openSession();
    Transaction tn = s.beginTransaction();
    String sub = request.getParameter("tsub");
    int q = Integer.parseInt(request.getParameter("thit"));
    Criteria c = s.createCriteria("pojodriver.QandA");
    Criterion cn1 = Restrictions.eq("tsub", sub);
    Criterion cn2 = Restrictions.eq("qno", q);
    c.add(cn1);
    c.add(cn2);
    QandA std = (QandA) c.uniqueResult();
    json.put("question", std.getQuestion());
    json.put("option1", std.getOption1());
    json.put("option2", std.getOption2());
    json.put("option3", std.getOption3());
    json.put("option4", std.getOption4());
    json.put("ans", std.getAnswer());
    out.println(json);
        
%>
