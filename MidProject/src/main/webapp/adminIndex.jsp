<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!DOCTYPE html>
    <html>

    <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      <jsp:include page="common.jsp" />
    </head>

    <body>
      <jsp:include page="header.jsp" />
      <div class="list-group">
        <a href="#" class="list-group-item list-group-item-action active" aria-current="true">
          Admin Setting
        </a>lptpy
        <a href="ShowUsers" class="list-group-item list-group-item-action">User Data</a>
        <a href="ShowSurvey" class="list-group-item list-group-item-action">Survey List</a>
        <a href="#" class="list-group-item list-group-item-action">Survey Result</a>
        <a class="list-group-item list-group-item-action disabled">A disabled link item</a>
      </div>
      <jsp:include page="footer.jsp" />

    </body>

    </html>