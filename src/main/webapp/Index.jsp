<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Online Employee Management System</title>
<link rel="stylesheet" href="css/styles.css">
</head>
<body>
    <jsp:include page="common/header.jsp"></jsp:include>

    <section id="hero">
        <div class="container">
            <h2>Efficiently Manage Your Employees Online</h2>
            <p>Streamline HR processes and enhance workforce productivity with our Employee Management System</p>
            <a href="Login.jsp" class="cta-button">Get Started</a>
        </div>
    </section>

    <section id="features">
        <div class="container">
            <h3>Key Features</h3>
            <div class="feature">
                <i class="fas fa-users"></i>
                <h4>Employee Database</h4>
                <p>Store and manage employee information with ease.</p>
            </div>
            <div class="feature">
                <i class="fas fa-chart-bar"></i>
                <h4>Performance Tracking</h4>
                <p>Track employee performance and set goals.</p>
            </div>
            <div class="feature">
                <i class="fas fa-calendar-alt"></i>
                <h4>Leave Management</h4>
                <p>Effortlessly manage employee leaves and vacations.</p>
            </div>
        </div>
    </section>

    <section id="contact">
        <div class="container">
            <h3>Contact Us</h3>
            <p>Ready to get started? Contact us for more information or to request a demo</p>
            <a href="mailto:example@example.com" class="cta-button">Email Us</a>
        </div>
    </section>

    <jsp:include page="common/footer.jsp"></jsp:include>
</body>
</html>