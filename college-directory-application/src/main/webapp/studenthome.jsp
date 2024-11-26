<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        h1 {
            color: #4CAF50;
            margin-top: 20px;
            font-size: 2.5em;
        }
        form {
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 400px;
        }
        form p {
            font-size: 1.1em;
            margin-bottom: 10px;
        }
        input[type="text"] {
            width: calc(100% - 22px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1em;
        }
        select {
            width: calc(100% - 22px);
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 1em;
        }
        input[type="submit"] {
            display: inline-block;
            padding: 10px 20px;
            font-size: 1.2em;
            color: #fff;
            background-color: #007bff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s, transform 0.3s;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <h1>Welcome to the Student Page</h1>
    <form action="getstudent">
        <p>To get your details, enter your roll number below:</p>
        <input type="text" name="rollno" placeholder="Enter roll number">
        <input type="submit" value="Submit">
    </form>
    <form action="getfaculty">
        <p>To get faculty details, select a course below:</p>
        <select name="course">
            <option value="">Select Course</option>
            <option value="bipc">BIPC</option>
            <option value="mpc">MPC</option>
            <option value="cec">CEC</option>
        </select>
        <input type="submit" value="Submit">
    </form>
</body>
</html>
