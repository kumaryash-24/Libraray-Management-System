<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>Contact Us - Yash Digital Library</title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <!-- Font Awesome for Social Icons -->
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
    <div class="container contact-content">
        <h1>Contact Us</h1>
        <p>
            We'd love to hear from you! Whether you have a question, feedback, or just want to say hello, feel free to reach out.
        </p>
        <div class="contact-details">
            <p><strong>Email:</strong> <a href="mailto:kumaryash24042002@gmail.com">kumaryash24042002@gmail.com</a></p>
            <p><strong>Developer:</strong> Kumar Yash</p>
            <p><strong>Connect with me:</strong></p>
            <p class="contact-social-links"> <!-- Added a container for social links -->
                <a href="https://www.linkedin.com/in/kumar-yash-592973227" target="_blank" class="button social-linkedin-btn">
                    <i class="fab fa-linkedin"></i> LinkedIn
                </a>
                <a href="https://github.com/kumaryash-24" target="_blank" class="button social-github-btn">
                    <i class="fab fa-github"></i> GitHub
                </a>
            </p>
            <p style="margin-top: 30px;">
                You can also follow the latest updates from Yash Digital Library and connect with other readers on our social channels!
            </p>
        </div>
        <a href="${pageContext.request.contextPath}/library/home" class="back-to-home button">Back to Home</a> <!-- Used general .button class -->
    </div>

    <!-- Footer Section -->
    <footer class="site-footer">
        <p>&copy; 2025 Yash Digital Library. All rights reserved.</p>
        <p>Designed with <span style="color: #e76f51;">&hearts;</span> Kumar Yash for learning and exploration.</p>
        <p>Follow us on <a href="https://www.linkedin.com/in/kumar-yash-592973227" target="_blank">Linkedin</a> | <a href="https://github.com/kumaryash-24" target="_blank">Github</a></p>
    </footer>
    
</body>
</html>