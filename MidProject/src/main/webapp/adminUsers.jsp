<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Information</title>
    <!-- 引入 Bootstrap 样式表和 JavaScript 文件 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">
     <jsp:include page="common.jsp" />ss
</head>
<body>
<jsp:include page="header.jsp" />
    <div class="container mt-5">
        <h1>User Information</h1>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>User ID</th>
                    <th>Email</th>
                    <th>User Name</th>
                    <th>Password</th>
                    <th>Gender</th>
                    <th>Occupation</th>
                    <th>User Type</th>
                    <th>Edit</th>
                    <th>Answer</th>
                    <th>DEL</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="user" items="${userList}">
                    <tr>
                        <td>${user.userID}</td>
                        <td>${user.email}</td>
                        <td>${user.userName}</td>
                        <td>${user.password}</td>
                        <td>${user.uGender}</td>
                        <td>${user.uOccupation}</td>
                        <td>${user.uType}</td>
                        <td><a href="EditUser?userID=${user.userID}" class="btn btn-primary">Edit</a></td>
                        <td><a href="EditUser?userID=${user.userID}" class="btn btn-info">Answer</a></td>
                        <td>
                            <a href="javascript:void(0);" class="btn btn-danger" onclick="confirmDelete('${user.userID}')">DEL</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <jsp:include page="footer.jsp" /><jsp:include page="footer.jsp" />
     <script>
        function confirmDelete(userID) {
            var result = confirm("Are you sure you want to delete this user?");
            if (result) {
                window.location.href = "DelUser?userID=" + userID;
            }
        }
    </script>
</body>
</html>
