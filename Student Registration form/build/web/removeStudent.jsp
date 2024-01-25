<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ include file="header.jsp" %>

<%
    // Dummy data retrieval
    List<Map<String, String>> students = (List<Map<String, String>>) application.getAttribute("students");

    // Retrieve the index parameter from the form
    int index = Integer.parseInt(request.getParameter("index"));

    // Remove the student map based on the index
    students.remove(index);
%>

<div class="container mt-5">
    <h2>Student Deleted</h2>
    <p>The student has been successfully deleted.</p>
    <a href="studentDetails.jsp">View Student Details</a>
</div>

<%@ include file="footer.jsp" %>
