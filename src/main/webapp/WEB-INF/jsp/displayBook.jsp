<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<html>
<head>
    <title>Display Books</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <style>
        /* New styles for search and filter */
        .search-filter-container {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
            padding: 10px 0;
            border-bottom: 1px solid #eee;
        }

        .search-filter-container form {
            display: flex;
            gap: 10px;
        }

        .search-filter-container input[type="text"],
        .search-filter-container select {
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .search-filter-container button {
            padding: 8px 15px;
            background-color: #28a745; /* Green */
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .search-filter-container button:hover {
            background-color: #218838;
        }

        .action-link {
            margin-right: 5px; /* Add some space between action links */
        }
    </style>
</head>
<body class="display-page">
    <div class="container">
        <h1>Welcome to Yash Digital Library</h1> <!-- Changed name here -->
        <c:if test="${not empty msg}">
            <div class="message">${msg}</div>
        </c:if>

        <div class="search-filter-container">
            <form action="${pageContext.request.contextPath}/library/display" method="get">
                <input type="text" name="searchTerm" placeholder="Search by Title or Author" value="${searchTerm}" />
                <select name="statusFilter">
                    <option value="">All Statuses</option>
                    <option value="available" ${statusFilter == 'available' ? 'selected' : ''}>Available</option>
                    <option value="borrowed" ${statusFilter == 'borrowed' ? 'selected' : ''}>Borrowed</option>
                </select>
                <button type="submit">Apply</button>
            </form>
            <a href="${pageContext.request.contextPath}/library/display" class="button">Reset Filters</a>
        </div>


        <table border="2" width="90%" cellpadding="2">
            <thead>
                <tr>
                    <th>Id</th>
                    <th>Book Name</th>
                    <th>Author</th>
                    <th>Price</th>
                    <th>Status</th>
                    <th>Borrowed Date</th>
                    <th>Borrowed For Days</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="book" items="${books}">
                    <tr>
                        <td>${book.id}</td>
                        <td>${book.name}</td>
                        <td>${book.author}</td>
                        <td>${book.price}</td>
                        <td>${book.status}</td>
                        <td>
                            <c:if test="${book.borrowedDate != null}">
                                <fmt:formatDate value="${book.borrowedDate}" pattern="yyyy-MM-dd"/>
                            </c:if>
                            <c:if test="${book.borrowedDate == null}">
                                N/A
                            </c:if>
                        </td>
                        <td>
                            <c:if test="${book.status == 'borrowed'}">
                                ${book.borrowedForDays}
                            </c:if>
                            <c:if test="${book.status == 'available'}">
                                N/A
                            </c:if>
                        </td>
                        <td>
                            <c:if test="${book.status == 'available'}">
                                <a href="borrowForm/${book.id}" class="action-link action-borrow">Borrow</a>
                            </c:if>
                            <c:if test="${book.status == 'borrowed'}">
                                <a href="returnBook/${book.id}" class="action-link action-return">Return</a>
                            </c:if>
                            <a href="updateBookForm/${book.id}" class="action-link action-update">Update</a>
                            <a href="deleteBook/${book.id}" class="action-link action-delete">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <br />
        <a href="addBookForm" class="button add-book-button">Add a Book</a>
        <a href="${pageContext.request.contextPath}/library/home" class="back-to-home">Back to Home</a>
    </div>
</body>
</html>