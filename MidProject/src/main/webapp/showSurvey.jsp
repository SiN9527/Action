<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Survey system</title>
<jsp:include page="common.jsp" />
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Survey System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a href="Index.jsp" class="nav-link active" aria-current="page" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Questionnaire List</a>
        </li>
        <c:if test="${loggedInMember != null}">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
            Create Survey
          </a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="createSurvey.jsp">Multiple choice question </a></li>
            <li><a class="dropdown-item" href="#">true-false question</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        </c:if>
        
        <c:if test="${loggedInMember.uType == 'admin' }">
        <li class="nav-item">
          <a href="adminIndex.jsp" class="nav-link active">admin</a>
          
        </li>
        </c:if>
      </ul>
      <div class="navbar">

    <c:choose>
        <c:when test="${loggedInMember == null}">
            <div class="dropdown text-end">
                <a href="login.jsp">
                    <button class="btn btn-primary">Login</button>
                </a>
                <a href="register.jsp">
                    <button class="btn btn-primary">Register</button>
                </a>
            </div>
        </c:when>
        <c:otherwise>
            <div class="dropdown text-end">
                <span class="mx-2 fs-4">${loggedInMember.userName}</span>
                <a href="/MidProject/Logout">
                    <button class="btn btn-warning">Logout</button>
                </a>
            </div>
        </c:otherwise>
    </c:choose>
</div>
      <form action="/MidProject/SearchSurvey" method="post" class="d-flex">
      
        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" name="title">
        <button class="btn btn-outline-success" type="submit">Search</button>
      </form>
    </div>
  </div>
</nav>


   <div class="container mt-5">
        <h1>Survey List</h1>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Survey ID</th>
                    <th>Title</th>
                    <th>Survey Date</th>
                    <th>Creator User ID</th>
                    <th>Edit</th>
                    <th>Answer</th>
                    <th>DEL</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="survey" items="${sList}">
                    <tr>
                        <td>${survey.surveyID}</td>
                        <td>${survey.title}</td>
                        <td>${survey.creationDate}</td>
                        <td>${survey.creatorID}</td>
                        <td><a href="ConfirmCS?surveyID=${survey.surveyID}" class="btn btn-primary">Confirm</a></td>
                        <td><a href="EditUser?surveyID=${survey.surveyID}" class="btn btn-info">Answer</a></td>
                        <td>
                            <a href="javascript:void(0);" class="btn btn-danger" onclick="confirmDelete('${survey.surveyID}')">DEL</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
    <script>
       
        
        function confirmDelete(surveyID) {
            var result = confirm("Are you sure you want to delete this survey?");
            if (result) {
                window.location.href = "DelSurvey?surveyID=" + surveyID;
            }
        }
    </script>
<jsp:include page="footer.jsp" />
</body>
</html>