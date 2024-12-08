<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Quiz - Domestic Violence Awareness</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:wght@300;400;500&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Roboto', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f9f9f9;
        }
        header {
            background-color: #4CAF50;
            color: white;
            padding: 20px;
            text-align: center;
        } /* Navbar */
        .navbar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            background-color: rgba(106, 13, 131, 0.9); /* Semi-transparent purple */
            padding: 15px 30px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            position: sticky;
            top: 0;
         right: 0;  /* Position navbar on the right */
        z-index: 10;
        width: 100%;  /* Ensure the navbar spans the full width */
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        .navbar .logo {
            font-size: 1.8rem;
            font-weight: bold;
            color: white;
            text-decoration: none;
        }

        .navbar .nav-links {
            display: flex;
            gap: 20px;
        }

        .navbar .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 1rem;
            padding: 8px 15px;
            background-color: #5fc8c2;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        .navbar .nav-links a:hover {
            background-color: #6a0d83;
        }
        
        section {
            padding: 40px;
            max-width: 600px;
            margin: 0 auto;
            background-color: #fff;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }
        h2 {
            text-align: center;
            color: #4CAF50;
        }
        .question {
            margin-bottom: 20px;
        }
        .question p {
            font-weight: 500;
            color: #333;
        }
        .question input {
            margin-right: 10px;
        }
        .submit-btn {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
            margin-top: 20px;
            border-radius: 8px;
        }
        .submit-btn:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<!-- Navbar -->
    <div class="navbar">
        
        <div class="nav-links">
            <a href="adminoverview.jsp">Overview</a>
            <a href="adminsteps.jsp">Steps</a>
            <a href ="VisitorHome.jsp">HOME</a>
            <a href="admindashboard.jsp">ADMIN DASHBOARD</a>
            <a href="adminresources.jsp">Resources</a>
            <a href="adminquiz.jsp">Self-Assessment Quiz</a>
        </div>
    </div>
<header>
    <h1>Quiz: Test Your Knowledge on Domestic Violence</h1>
</header>

<section>
    <h2>Answer the questions below:</h2>
    <form action="/submitQuiz" method="post">
        <div class="question">
            <p>1. What is the first step in seeking help for domestic violence?</p>
            <input type="radio" name="q1" value="a" required> Recognizing the signs<br>
            <input type="radio" name="q1" value="b"> Seeking legal advice<br>
            <input type="radio" name="q1" value="c"> Reaching out to a counselor<br>
        </div>

        <div class="question">
            <p>2. Who can you contact for legal advice in cases of domestic violence?</p>
            <input type="radio" name="q2" value="a" required> A local police officer<br>
            <input type="radio" name="q2" value="b"> A legal advisor<br>
            <input type="radio" name="q2" value="c"> A counselor<br>
        </div>

        <div class="question">
            <p>3. What is one of the common signs of domestic violence?</p>
            <input type="radio" name="q3" value="a" required> Sudden isolation from friends and family<br>
            <input type="radio" name="q3" value="b"> Excessive self-confidence<br>
            <input type="radio" name="q3" value="c"> Increased wealth<br>
        </div>

        <div class="question">
            <p>4. Which of the following is a form of emotional abuse?</p>
            <input type="radio" name="q4" value="a" required> Verbal insults<br>
            <input type="radio" name="q4" value="b"> Physical attacks<br>
            <input type="radio" name="q4" value="c"> Sexual harassment<br>
        </div>

        <div class="question">
            <p>5. What is a protective order?</p>
            <input type="radio" name="q5" value="a" required> A legal document that prevents an abuser from contacting or approaching the victim<br>
            <input type="radio" name="q5" value="b"> A warning from a police officer<br>
            <input type="radio" name="q5" value="c"> A method of financial support<br>
        </div>

        <div class="question">
            <p>6. Where can you find resources for domestic violence support?</p>
            <input type="radio" name="q6" value="a" required> Local shelters and hotlines<br>
            <input type="radio" name="q6" value="b"> Grocery stores<br>
            <input type="radio" name="q6" value="c"> Social media only<br>
        </div>

        <button type="submit" class="submit-btn">Submit Quiz</button>
    </form>
</section>

</body>
</html>
