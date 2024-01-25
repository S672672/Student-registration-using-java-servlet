<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.Map" %>
<%@ include file="header.jsp" %>

<%
    // Dummy data retrieval
    List<Map<String, String>> students = (List<Map<String, String>>) application.getAttribute("students");
%>

<div class="container mt-5">
    <h2>Student Details</h2>
    <table class="table">
        <thead>
            <tr>
                <th>Name</th>
                <th>Course</th>
                <th>Division</th>
                <th>Roll</th>
                <th>Age</th>
                <th>fees</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <% for (Map<String, String> student : students) { %>
                <tr>
                    <td><%= student.get("name") %></td>
                    <td><%= student.get("Course") %></td>
                    <td><%= student.get("division") %></td>
                    <td><%= student.get("roll") %></td>
                    <td><%= student.get("age") %></td>
                     <td><%= student.get("fees") %></td>
                    <td>
                        <a href="editStudent.jsp?index=<%= students.indexOf(student) %>">Edit</a>
                        <a href="deleteStudent.jsp?index=<%= students.indexOf(student) %>">Delete</a>
                    </td>
                </tr>
            <% } %>
        </tbody>
    </table>
    <a href="index.jsp">Add New Student</a>
</div>

<%@ include file="footer.jsp" %>
