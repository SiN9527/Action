<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
        <!DOCTYPE html>
        <html>

        <head>
            <title>User Registration</title>
            <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" rel="stylesheet"
                integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
                crossorigin="anonymous">
            <jsp:include page="common.jsp" />
        </head>

        <body>
            <jsp:include page="header.jsp" />
            <div class="container">
                <h1 class="mt-5">User Registration123</h1>
                <form action="/MidProject/Login" method="post" class="mt-4">

                    <div class="mb-3">1234
                        <label for="email" class="form-label">Email:</label>
                        <input type="email" id="email" name="email" class="form-control" required>
                    </div>

                    <div class="mb-3">
                        <label for="password" class="form-label">Password:</label>
                        <input type="password" id="password" name="password" class="form-control"
                            pattern="^(?=.*[a-z])(?=.*[A-Z]).{8,}$" required>
                        <div class="invalid-feedback">Password must contain at least one uppercase and one lowercase
                            letter, and be at least 8 characters long.</div>
                    </div>



                    <div class="row">
                        <div class="col-md-6">
                            <input type="submit" value="LogIn" class="btn btn-primary btn-block">
                        </div>
                        <div class="col-md-6">
                            <input type="button" id="register" name="register" value="Register"
                                class="btn btn-primary btn-block" onclick="location.href='/MidProject/register.jsp';">

                        </div>
                    </div>
                    <div class="mt-5" style="color: red">${message}</div>
                </form>





            </div>
            <jsp:include page="footer.jsp" />

            <!-- 引入Bootstrap JS -->
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
                integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
                crossorigin="anonymous"></script>
        </body>

        </html>