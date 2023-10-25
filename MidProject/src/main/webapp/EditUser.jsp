<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <meta charset="UTF-8">
            <title>Edit User</title>
            <!-- 引入 Bootstrap 样式表和 JavaScript 文件 -->
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/css/bootstrap.min.css">
            <jsp:include page="common.jsp" />
        </head>

        <body>
            <jsp:include page="header.jsp" />asd
            <div class="container mt-5">
                <h1 class="mb-4">Edit User</h1>
                <form action="UpdateUser" method="POST">
                    <input type="hidden" name="userID" value="${user.userID}">

                    <div class="mb-3">
                        <label for="userID" class="form-label">User ID:</label>
                        <input type="text" class="form-control" id="userID" name="userID" readonly
                            value="${user.userID}">
                    </div>

                    <div class="mb-3">
                        <label for="email" class="form-label">Email:</label>
                        <input type="text" class="form-control" id="email" name="email" value="${user.email}">
                    </div>

                    <div class="mb-3">
                        <label for="userName" class="form-label">Name:</label>
                        <input type="text" class="form-control" id="userName" name="userName" value="${user.userName}">
                    </div>

                    <div class="mb-3">
                        <label for="password" class="form-label">Password:</label>
                        <input type="text" class="form-control" id="password" name="password" value="${user.password}">
                    </div>

                    <div class="mb-3">
                        <label for="uGender" class="form-label">Gender:</label>
                        <input type="text" class="form-control" id="uGender" name="uGender" value="${user.uGender}">
                    </div>

                    <div class="mb-3">
                        <label for="uOccupation" class="form-label">Occupation:</label>
                        <input type="text" class="form-control" id="uOccupation" name="uOccupation"
                            value="${user.uOccupation}">
                    </div>

                    <div class="mb-3">
                        <label for="uType" class="form-label">Type:</label>
                        <select class="form-select" id="uType" name="uType">
                            <option value="admin" ${user.uType=='admin' ? 'selected' : '' }>Admin</option>
                            <option value="user" ${user.uType=='user' ? 'selected' : '' }>User</option>
                        </select>
                    </div>

                    <button type="submit" class="btn btn-primary">Update User</button>
                </form>
            </div>
            <jsp:include page="footer.jsp" />
        </body>

        </html>