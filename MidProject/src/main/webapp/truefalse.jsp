<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>Create Survey</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.5.0/dist/css/bootstrap.min.css">
    <jsp:include page="common.jsp" />
</head>
<body>
    <jsp:include page="header.jsp" />
    <div class="container mt-5">
        <h1>Create a New Survey</h1>
        <form action="TrueFalse" method="post">
            <div class="mb-3">
                <label for="surveyTitle" class="form-label">Survey Title:</label>
                <input type="text" class="form-control" id="title" name="title" required>
            </div>
            
            <c:set var="userId" value="${loggedInMember.userID}" />
            <input type="hidden" name="userID" value="${userId}" />

            <h2>Questions:</h2>
            <div id="questions">
                <div class="question mb-3">
                    <label for="questionText" class="form-label">Question Text:</label>
                    <input type="text" class="form-control" name="questionTexts[]" required>
                    
                    <label class="form-label">Is True/False:</label>
                    <select class="form-select" name="isTrueFalse">
                        <option value="true">True</option>
                        <option value="false">False</option>
                    </select>
                </div>
            </div>
            
            <button type="button" class="btn btn-primary" onclick="addQuestion()">Add Question</button>
            <br><br>
            <input type="submit" class="btn btn-success" value="Create Survey">
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.5.0/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>

    <script>
        var questionCount = 1;

        function addQuestion() {
            questionCount++;
            var questionsDiv = document.getElementById("questions");
            var newQuestionDiv = document.createElement("div");
            newQuestionDiv.className = "question mb-3";
            newQuestionDiv.innerHTML = `
                <label for="questionText" class="form-label">Question Text:</label>
                <input type="text" class="form-control" name="questionTexts[]" required>
                
                <label class="form-label">Is True/False:</label>
                <select class="form-select" name="isTrueFalse">
                    <option value="true">True</option>
                    <option value="false">False</option>
                </select>
            `;
            questionsDiv.appendChild(newQuestionDiv);
        }
    </script>
    <jsp:include page="footer.jsp" />
</body>
</html>
