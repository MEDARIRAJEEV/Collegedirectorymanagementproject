<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Failed</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            text-align: center;
            background-color: #fff;
            padding: 2em;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        h1,h2{
            color: #ff4d4d;
            margin-bottom: 1em;
        }
        a {
            text-decoration: none;
            color: #007bff;
            font-weight: bold;
            font-size: 1.1em;
        }
        a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Login Failed</h1>
        <h2>Enter correct password</h2>
        <p>Your login attempt was unsuccessful. Please try again.</p>
        <a href="login.jsp">Go Back</a>
    </div>

    <script>
        // Optional: Redirect to the login page after 10 seconds
        setTimeout(function() {
            window.location.href = 'login.jsp';
        }, 10000); // 10000 milliseconds = 10 seconds
    </script>
</body>
</html>
