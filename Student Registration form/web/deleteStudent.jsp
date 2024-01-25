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
%>

<div class="container mt-5">
    <h2>Delete Student</h2>
    <p>Are you sure you want to delete the student with Name: <%= student.get("name") %>?</p>
    <form action="removeStudent.jsp" method="post">
        <input type="hidden" name="index" value="<%= index %>">
        <button type="submit" class="btn btn-danger">Delete</button>
        <a href="studentDetails.jsp">Cancel</a>
    </form>
</div>

<%@ include file="footer.jsp" %>
