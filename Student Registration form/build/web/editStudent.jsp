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
    <h2>Edit Student</h2>
    <form action="updateStudent.jsp" method="post">
        <input type="hidden" name="index" value="<%= index %>">
        <div class="form-group">
            <label for="name">Name:</label>
            <input type="text" class="form-control" id="name" name="name" value="<%= student.get("name") %>" required>
        </div>
        <div class="form-group">
            <label for="division">Division:</label>
            <input type="text" class="form-control" id="division" name="division" value="<%= student.get("division") %>" required>
        </div>
        <div class="form-group">
            <label for="roll">Roll:</label>
            <input type="text" class="form-control" id="roll" name="roll" value="<%= student.get("roll") %>" required>
        </div>
        <div class="form-group">
            <label for="age">Age:</label>
            <input type="number" class="form-control" id="age" name="age" value="<%= student.get("age") %>" required>
        </div>
         <div class="form-group">
            <label for="Course">Course:</label>
            <input type="text" class="form-control" id="Course" name="Course" value="<%= student.get("Course") %>" required>
        </div>
        <div class="form-group">
            <label for="fees">fees:</label>
            <input type="number" class="form-control" id="fees" name="fees" value="<%= student.get("fees") %>" required>
        </div>
        <button type="submit" class="btn btn-primary">Update</button>
    </form>
</div>

<%@ include file="footer.jsp" %>
