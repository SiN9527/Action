<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">yy
        <a class="navbar-brand" href="#">Survey System</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a href="Index.jsp" class="nav-link active" aria-current="page" href="#">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="surveyList.jsp">Questionnaire List</a>
            </li>
            <c:if test="${loggedInMember != null}">
              <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown"
                  aria-expanded="false">
                  Create Survey
                </a>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="createSurvey.jsp">Multiple choice question </a></li>
                  <li><a class="dropdown-item" href="truefalse.jsp">true-false question</a></li>
                  <li>
                    <hr class="dropdown-divider">
                  </li>
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
          <form class="d-flex">

            <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-success" type="submit">Search</button>
          </form>
        </div>
      </div>
    </nav>