<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>List</title>
    <jsp:include page="common.jsp" />
</head>
<body>
<jsp:include page="header.jsp" />
    <div class="container mt-5">
        <h1>Survey List</h1>
        <table id="surveyTable" class="table table-bordered">
            <thead>
                <tr>
                    <th>Survey ID</th>
                    <th>Title</th>
                    <th>Creation Date</th>
                    <th>Creator User ID</th>
                    <th>Answer</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="survey" items="${applicationScope.surveys}">
                    <tr>
                        <td>${survey.surveyID}</td>
                        <td>${survey.title}</td>
                        <td>${survey.creationDate}</td>
                        <td>${survey.creatorID}</td>
                         <td>
 <a href="ViewSurvey?surveyID=${survey.surveyID}" class="btn btn-primary">View</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    
    <script>
    $(document).ready(function() {
        $.get("http://localhost:8080/MidProject/LoadSurveys", function(data) {
            var tableBody = $("#surveyTable > tbody");
            tableBody.empty();
            
            // 初始化
            data.forEach(function(survey) {
                var row = $("<tr>");
                row.append("<td>" + survey.surveyID + "</td>");
                row.append("<td>" + survey.title + "</td>");
                row.append("<td>" + survey.creationDate + "</td>");
                row.append("<td>" + survey.creatorID + "</td>");
                
                // 创建 "View" 链接并设置链接属性
                var viewLink = $("<a>").attr("href", "ViewSurvey?surveyID=" + survey.surveyID)
                                      .addClass("btn btn-primary")
                                      .text("View");
                var td = $("<td>").append(viewLink);
                row.append(td);
                
                tableBody.append(row);
            });
        });
    });

    </script>
<jsp:include page="footer.jsp" />
</body>
</html>