<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Links with Style</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }
        center {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        a {
            display: block;
            padding: 10px 20px;
            margin: 10px;
            background-color: #007bff;
            color: white;
            text-decoration: none;
            text-align: center;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <center>
        <a href="addfaculty.jsp">Enter Faculty Details</a>
        <a href="addstudent.jsp">Enter Student Details</a>
        <a href="login.jsp">Go Back</a>
    </center>
</body>
</html>
