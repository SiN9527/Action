<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create Survey</title>
    <jsp:include page="common.jsp" />
</head>
<body>
    <jsp:include page="header.jsp" />
    <div class="container mt-5">
        <h1 class="mb-4">${survey.title}</h1>
        <form action="SubmitSurvey" method="post">
            <ul class="list-group">
                <input type="hidden" name="surveyID" value="${surveyID}">
                <c:forEach var="question" items="${questions}">
                    <input type="hidden" name="qID" value="${question.qID}">
                    <li class="list-group-item">${question.qText}</li>
                    <ul class="list-group">
                        <c:forEach var="option" items="${options[question.qID]}">
                            <li class="list-group-item">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="question${question.qID}" value="${option.optionID}" id="option${option.optionID}">
                                    <label class="form-check-label" for="option${option.optionID}">
                                        ${option.optionText}
                                    </label>
                                </div>
                            </li>
                        </c:forEach>
                    </ul>
                </c:forEach>
            </ul>
            <button type="submit" class="btn btn-primary mt-3" onclick="showConfirmation()">Submit</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script>
function showConfirmation() {
    if (confirm("Are you sure to submit survey?")) {
        document.getElementById("surveyForm").submit();
    
    }
}

function showSuccess() {
    alert("Success！");
}
</script>

    <jsp:include page="footer.jsp" />
</body>
</html>

