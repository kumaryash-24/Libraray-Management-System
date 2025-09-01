<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>About Us - Yash Digital Library</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <!-- Font Awesome for icons (required for button icons) -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body class="home-page">
    
    <!-- Header Section -->
    <header class="site-header">
        <div class="logo">Yash Digital Library</div>
        <nav class="nav-links">
            <a href="${pageContext.request.contextPath}/library/home">Home</a>
            <a href="${pageContext.request.contextPath}/library/display">Books</a>
            <a href="${pageContext.request.contextPath}/library/about">About</a>
            <a href="${pageContext.request.contextPath}/library/contact">Contact</a>
        </nav>
    </header>

    <!-- Main Content -->
    <div class="container about-content">
        <h1>About Yash Digital Library</h1>
        <p>
            Welcome to the Yash Digital Library, a digital hub passionately designed for students, educators, and lifelong learners. Our mission is to foster a love for reading and provide easy access to a diverse collection of knowledge. We believe that every book holds a new adventure, a new lesson, and a new perspective waiting to be discovered.
        </p>
        <p>
            Founded on the principles of accessibility and continuous learning, Yash Digital Library strives to be more than just a repository of books. It's a community space where ideas flourish, curiosity is celebrated, and the pursuit of knowledge is a joyful journey. From classic literature to modern science, from captivating fiction to insightful non-fiction, our carefully curated collection aims to cater to a wide range of interests and academic needs.
        </p>
        <p>
            We are constantly working to improve our services, expand our collection, and integrate innovative features to make your library experience seamless and enriching. Thank you for being a part of our growing community!
        </p>
        <!-- Modified button structure to match contact.jsp style -->
        <div class="about-buttons-container">
            <a href="${pageContext.request.contextPath}/library/display" class="button about-action-btn primary-about-btn">
                <i class="fas fa-book-open"></i> Explore Our Collection
            </a>
            <a href="${pageContext.request.contextPath}/library/home" class="button about-action-btn secondary-about-btn">
                <i class="fas fa-home"></i> Back to Home
            </a>
        </div>
    </div>

    <!-- Footer Section -->
    <footer class="site-footer">
        <p>&copy; 2025 Yash Digital Library. All rights reserved.</p>
        <p>Designed with <span style="color: #e76f51;">&hearts;</span> Kumar Yash for learning and exploration.</p>
        <p>Follow us on <a href="https://www.linkedin.com/in/kumar-yash-592973227" target="_blank">Linkedin</a> | <a href="https://github.com/kumaryash-24" target="_blank">Github</a></p>
    </footer>

</body>
</html>