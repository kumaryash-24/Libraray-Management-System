<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>Borrow Book</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body class="borrow-page">
    <div class="container">
        <h1>Borrow Book: ${book.name}</h1>
        <form method="post" action="${pageContext.request.contextPath}/library/borrowBook">
            <table>
                <tr>
                    <td>Book ID:</td>
                    <td><input type="text" id="id" name="id" value="${book.id}" readonly></td>
                </tr>
                <tr>
                    <td>Book Name :</td>
                    <td><input type="text" value="${book.name}" readonly></td>
                </tr>
                <tr>
                    <td>Borrowed For (Days):</td>
                    <td><input type="number" id="borrowedForDays" name="borrowedForDays" min="1" required></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Borrow Book" /></td>
                </tr>
            </table>
        </form>
        <br />
        <a href="${pageContext.request.contextPath}/library/display" class="button">Back to Library</a>
        <a href="${pageContext.request.contextPath}/library/home" class="back-to-home">Back to Home</a>
    </div>
</body>
</html>