<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Domestic Violence Support</title>
    <div>
    
    <style>
        /* General Styles */
        body {
            margin: 0;
            padding: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(to bottom right, #f5f7fa, #c3cfe2);
            color: #333;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        
        

        .wrapper {
            width: 400px;
            background: #fff;
            border-radius: 10px;
            box-shadow: 0 8px 20px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            padding: 20px 30px;
            text-align: center;
        }

        .logo {
            width: 80px;
            height: auto;
            margin: 0 auto 10px;
        }

        h2.text-right {
            margin: 10px 0;
            color: #2c3e50;
        }

        .form-wrapper h2 {
            color: #3498db;
            font-size: 24px;
            margin-bottom: 20px;
        }

        .input-box {
            position: relative;
            margin-bottom: 20px;
        }

        .input-box input {
            width: 100%;
            padding: 10px 40px;
            border: 1px solid #ddd;
            border-radius: 5px;
            font-size: 16px;
        }

        .input-box .icon {
            position: absolute;
            left: 10px;
            top: 50%;
            transform: translateY(-50%);
            color: #7f8c8d;
        }

        .input-box input:focus {
            border-color: #3498db;
            outline: none;
        }

        .forgot-pass a {
            font-size: 14px;
            color: #3498db;
            text-decoration: none;
        }

        .forgot-pass a:hover {
            text-decoration: underline;
        }

        .btn {
            display: block;
            width: 100%;
            padding: 10px;
            background: #3498db;
            color: #fff;
            font-size: 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background 0.3s;
        }

        .btn:hover {
            background: #2980b9;
        }

        .sign-link p {
            margin-top: 15px;
            font-size: 14px;
            color: #7f8c8d;
        }

        .sign-link a {
            color: #3498db;
            text-decoration: none;
        }

        .sign-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    
   <div class="mainnavbar">
        <a href="VisitorHome.jsp" class="active">Home</a>
        <a href="userlogin.jsp">User Login</a>
        <a href="counsellorlogin.jsp">Counsellor Login</a>
        <a href="adminLogin.jsp">Admin Login</a>
    </div>
    <div class="wrapper">
    
        <img src="image10.jpg" alt="Domestic Violence Support" class="logo">
        <h2 class="text-right">WELCOME TO USER LOGIN</h2>
        <div class="form-wrapper login">
            <form action="userloginfail.jsp" method="post">
                <h2>Login</h2>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="mail"></ion-icon>
                    </span>
                    <input type="email" placeholder="Email" required>
                </div>
                <div class="input-box">
                    <span class="icon">
                        <ion-icon name="lock-closed"></ion-icon>
                    </span>
                    <input type="password" placeholder="Password" required>
                </div>
                <div class="forgot-pass">
                    <a href="#">Forgot Password?</a>
                </div>
                <button type="submit" class="btn">Login</button>
                <div class="sign-link">
                    <p>Don't have an account? <a href="userreg.jsp" onclick="registerActive()">Register</a></p>
                </div>
            </form>
        </div>
    </div>
    <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
    <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>
</body>
</html>
