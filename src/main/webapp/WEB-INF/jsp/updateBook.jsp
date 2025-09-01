<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>Update Book</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body class="add-update-page">
    <div class="container">
        <h1>Update Book</h1>
        <form method="post" action="${pageContext.request.contextPath}/library/updateBook">
            <table>
                <tr>
                    <td>Book ID:</td>
                    <td><input type="text" id="id" name="id" value="${book.id}" readonly></td>
                </tr>
                <tr>
                    <td>Book Name :</td>
                    <td><input type="text" id="name" name="name" value="${book.name}" required></td>
                </tr>
                <tr>
                    <td>Author :</td>
                    <td><input type="text" id="author" name="author" value="${book.author}" required></td>
                </tr>
                <tr>
                    <td>Price :</td>
                    <td><input type="number" id="price" name="price" value="${book.price}" min="0" required></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Update Book" /></td>
                </tr>
            </table>
        </form>
        <br />
        <a href="${pageContext.request.contextPath}/library/display" class="button">Back to Library</a>
        <a href="${pageContext.request.contextPath}/library/home" class="back-to-home">Back to Home</a>
    </div>
</body>
</html>