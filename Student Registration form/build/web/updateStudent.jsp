<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ include file="header.jsp" %>

<%
    // Dummy data retrieval
    List<Map<String, String>> students = (List<Map<String, String>>) application.getAttribute("students");

    // Retrieve the index parameter from the URL
    int index = Integer.parseInt(request.getParameter("index"));

    // Retrieve the student map based on the index
    Map<String, String> student = students.get(index);

    // Retrieve form parameters
    String name = request.getParameter("name");
    String division = request.getParameter("division");
    String roll = request.getParameter("roll");
    String age = request.getParameter("age");
    String course = request.getParameter("Course");
    String fees = request.getParameter("fees");

    // Update the student map based on the index
    student.put("name", name);
    student.put("division", division);
    student.put("roll", roll);
    student.put("age", age);
    student.put("Course", course);
    student.put("fees",fees);
    // Redirect to the studentDetails.jsp page
    response.sendRedirect("studentDetails.jsp");
%>

<%@ include file="footer.jsp" %>
