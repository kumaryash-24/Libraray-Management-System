<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
    <title>Yash Digital Library</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/style.css">
    <!-- Font Awesome for icons -->
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
    <div class="container home-content">
        <!-- Hero Section - More impactful -->
        <section class="hero-section">
            <h1>Unlock Infinite Worlds of Stories & Knowledge</h1>
            <p>
                Dive into a meticulously curated collection of books. Your next great read is just a click away at <strong>Yash Digital Library</strong>.
            </p>
            <a href="${pageContext.request.contextPath}/library/display" class="explore-btn hero-btn">Start Exploring Now <i class="fas fa-arrow-right"></i></a>
        </section>

        <!-- Existing Book Carousel Section -->
        <div class="book-carousel-wrapper">
            <div class="book-carousel">
                <div class="book-carousel-item"><span>"The Secret History"</span> by Donna Tartt</div>
                <div class="book-carousel-item"><span>"Norwegian Wood"</span> by Haruki Murakami</div>
                <div class="book-carousel-item"><span>"A Little Life"</span> by Hanya Yanagihara</div>
                <div class="book-carousel-item"><span>"Sapiens: A Brief History of Humankind"</span> by Yuval Noah Harari</div>
                <div class="book-carousel-item"><span>"The Name of the Wind"</span> by Patrick Rothfuss</div>
                <div class="book-carousel-item"><span>"Where the Forest Meets the Stars"</span> by Glendy Vanderah</div>
                <div class="book-carousel-item"><span>"The Starless Sea"</span> by Erin Morgenstern</div>
                <div class="book-carousel-item"><span>"Kafka on the Shore"</span> by Haruki Murakami</div>
                <div class="book-carousel-item"><span>"Circe"</span> by Madeline Miller</div>
                <div class="book-carousel-item"><span>"The Overstory"</span> by Richard Powers</div>
                <!-- Duplicate items for seamless looping -->
                <div class="book-carousel-item"><span>"The Secret History"</span> by Donna Tartt</div>
                <div class="book-carousel-item"><span>"Norwegian Wood"</span> by Haruki Murakami</div>
                <div class="book-carousel-item"><span>"A Little Life"</span> by Hanya Yanagihara</div>
                <div class="book-carousel-item"><span>"Sapiens: A Brief History of Humankind"</span> by Yuval Noah Harari</div>
                <div class="book-carousel-item"><span>"The Name of the Wind"</span> by Patrick Rothfuss</div>
                <div class="book-carousel-item"><span>"Where the Forest Meetsthe Stars"</span> by Glendy Vanderah</div>
                <div class="book-carousel-item"><span>"The Starless Sea"</span> by Erin Morgenstern</div>
                <div class="book-carousel-item"><span>"Kafka on the Shore"</span> by Haruki Murakami</div>
                <div class="book-carousel-item"><span>"Circe"</span> by Madeline Miller</div>
                <div class="book-carousel-item"><span>"The Overstory"</span> by Richard Powers</div>
            </div>
        </div>

        <!-- New: Why Choose Us Section -->
        <section class="info-section">
            <h2>Why Choose Yash Digital Library?</h2>
            <div class="info-grid">
                <div class="info-item">
                    <i class="fas fa-book-reader"></i>
                    <h3>Vast Collection</h3>
                    <p>Access thousands of titles across diverse genres, from timeless classics to modern bestsellers.</p>
                </div>
                <div class="info-item">
                    <i class="fas fa-globe"></i>
                    <h3>Anywhere, Anytime</h3>
                    <p>Borrow and read books on any device, wherever you are, whenever you want.</p>
                </div>
                <div class="info-item">
                    <i class="fas fa-lightbulb"></i>
                    <h3>Continuous Learning</h3>
                    <p>Fuel your curiosity and enhance your knowledge with resources for every interest and age group.</p>
                </div>
            </div>
        </section>

        <!-- Existing Featured Books Section -->
        <section class="featured-books-section">
            <h2>Our Top Picks</h2>
            <div class="featured-books-grid">
                
                <!-- Book 1 -->
                <div class="book-card">
                    <img src="https://images.pexels.com/photos/1907785/pexels-photo-1907785.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="The Silent Patient Book Cover" class="book-cover">
                    <div class="book-info">
                        <h3>The Silent Patient</h3>
                        <p class="book-author">by Alex Michaelides</p>
                        <p class="book-price">Rs. 350</p>
                        <a href="${pageContext.request.contextPath}/library/display" class="borrow-btn">Borrow Now</a>
                    </div>
                </div>

                <!-- Book 2 -->
                <div class="book-card">
                    <img src="https://images.pexels.com/photos/13014168/pexels-photo-13014168.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="Atomic Habits Book Cover" class="book-cover">
                    <div class="book-info">
                        <h3>Atomic Habits</h3>
                        <p class="book-author">by James Clear</p>
                        <p class="book-price">Rs. 420</p>
                        <a href="${pageContext.request.contextPath}/library/display" class="borrow-btn">Borrow Now</a>
                    </div>
                </div>

                <!-- Book 3 -->
                <div class="book-card">
                    <img src="https://images.pexels.com/photos/256450/pexels-photo-256450.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="The Henna Artist Book Cover" class="book-cover">
                    <div class="book-info">
                        <h3>The Henna Artist</h3>
                        <p class="book-author">by Alka Joshi</p>
                        <p class="book-price">Rs. 280</p>
                        <a href="${pageContext.request.contextPath}/library/display" class="borrow-btn">Borrow Now</a>
                    </div>
                </div>

                <!-- Book 4 -->
                <div class="book-card">
                    <img src="https://images.pexels.com/photos/3358706/pexels-photo-3358706.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="Project Hail Mary Book Cover" class="book-cover">
                    <div class="book-info">
                        <h3>Project Hail Mary</h3>
                        <p class="book-author">by Andy Weir</p>
                        <p class="book-price">Rs. 500</p>
                        <a href="${pageContext.request.contextPath}/library/display" class="borrow-btn">Borrow Now</a>
                    </div>
                </div>

                <!-- Book 5 -->
                <div class="book-card">
                    <img src="https://images.pexels.com/photos/1029141/pexels-photo-1029141.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="The Midnight Library Book Cover" class="book-cover">
                    <div class="book-info">
                        <h3>The Midnight Library</h3>
                        <p class="book-author">by Matt Haig</p>
                        <p class="book-price">Rs. 380</p>
                        <a href="${pageContext.request.contextPath}/library/display" class="borrow-btn">Borrow Now</a>
                    </div>
                </div>

                <!-- Book 6 -->
                <div class="book-card">
                    <img src="https://images.pexels.com/photos/590493/pexels-photo-590493.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1" alt="Dune Book Cover" class="book-cover">
                    <div class="book-info">
                        <h3>Dune</h3>
                        <p class="book-author">by Frank Herbert</p>
                        <p class="book-price">Rs. 475</p>
                        <a href="${pageContext.request.contextPath}/library/display" class="borrow-btn">Borrow Now</a>
                    </div>
                </div>

            </div>
            <a href="${pageContext.request.contextPath}/library/display" class="explore-btn view-all-books-btn">View All Books</a>
        </section>

        <!-- New: Testimonials Section -->
        <section class="testimonials-section">
            <h2>What Our Readers Say</h2>
            <div class="testimonials-grid">
                <div class="testimonial-card">
                    <p class="quote">"Yash Digital Library has completely transformed my reading habits. The collection is amazing!"</p>
                    <p class="author">- Priya Sharma</p>
                </div>
                <div class="testimonial-card">
                    <p class="quote">"Easy to use, and I always find exactly what I'm looking for. Highly recommend!"</p>
                    <p class="author">- Rahul Singh</p>
                </div>
                <div class="testimonial-card">
                    <p class="quote">"A fantastic resource for students and anyone passionate about learning. Truly innovative!"</p>
                    <p class="author">- Dr. Anjali Mehta</p>
                </div>
            </div>
        </section>

        <!-- New: Categories Section -->
        <section class="categories-section">
            <h2>Explore by Category</h2>
            <div class="categories-grid">
                <a href="${pageContext.request.contextPath}/library/display?statusFilter=&searchTerm=Fiction" class="category-card">
                    <i class="fas fa-feather-alt"></i>
                    <h3>Fiction</h3>
                </a>
                <a href="${pageContext.request.contextPath}/library/display?statusFilter=&searchTerm=Science" class="category-card">
                    <i class="fas fa-flask"></i>
                    <h3>Science</h3>
                </a>
                <a href="${pageContext.request.contextPath}/library/display?statusFilter=&searchTerm=History" class="category-card">
                    <i class="fas fa-hourglass-half"></i>
                    <h3>History</h3>
                </a>
                <a href="${pageContext.request.contextPath}/library/display?statusFilter=&searchTerm=Biography" class="category-card">
                    <i class="fas fa-user-circle"></i>
                    <h3>Biography</h3>
                </a>
                <a href="${pageContext.request.contextPath}/library/display?statusFilter=&searchTerm=Fantasy" class="category-card">
                    <i class="fas fa-dragon"></i>
                    <h3>Fantasy</h3>
                </a>
            </div>
        </section>

    </div>

    <!-- Footer Section -->
    <footer class="site-footer">
        <p>&copy; 2025 Yash Digital Library. All rights reserved.</p>
        <p>Designed with <span style="color: #e76f51;">&hearts;</span> Kumar Yash for learning and exploration.</p>
        <p>Follow us on <a href="https://www.linkedin.com/in/kumar-yash-592973227" target="_blank">Linkedin</a> | <a href="https://github.com/kumaryash-24" target="_blank">Github</a></p>
    </footer>

</body>
</html>