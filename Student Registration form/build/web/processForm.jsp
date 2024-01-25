<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map.Entry" %>
<%@ page import="java.util.Set" %>
<%@ include file="header.jsp" %>

<%
    // Dummy data storage (should be replaced with a database)
    List<Map<String, String>> students = (List<Map<String, String>>) application.getAttribute("students");

    if (students == null) {
        students = new ArrayList<>();
        application.setAttribute("students", students);
    }

    // Retrieve form parameters
    String name = request.getParameter("name");
    String division = request.getParameter("division");
    String roll = request.getParameter("roll");
    String age = request.getParameter("age");
    String Course = request.getParameter("Course");
    String fees = request.getParameter("fees");

    // Create a new student map
    Map<String, String> newStudent = new HashMap<>();
    newStudent.put("name", name);
    newStudent.put("division", division);
    newStudent.put("roll", roll);
    newStudent.put("age", age);
    newStudent.put("Course",Course);
    newStudent.put("fees",fees);

    // Add the student map to the list
    students.add(newStudent);
%>

<%@ include file="header.jsp" %>

<div class="container mt-5">
    <h2>Student Information Form - Success</h2>
    <p>The student information has been successfully stored.</p>
    <a href="studentDetails.jsp">View Student Details</a>
</div>

<%@ include file="footer.jsp" %>
