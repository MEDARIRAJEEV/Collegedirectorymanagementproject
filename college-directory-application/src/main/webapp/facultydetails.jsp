<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Faculty Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #333;
            margin: 0;
            padding: 0;
            text-align: center;
        }
        form {
            margin: 20px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 600px;
        }
        h1 {
            color: #4CAF50;
            font-size: 2em;
            margin-bottom: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
            margin: 20px 0;
        }
        th, td {
            padding: 12px;
            text-align: left;
        }
        th {
            background-color: #007bff;
            color: #fff;
        }
        td {
            background-color: #f9f9f9;
        }
        th, td {
            border-bottom: 1px solid #ddd;
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
            text-decoration: none;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
            transform: scale(1.05);
        }
    </style>
</head>
<body>
    <form action="studenthome.jsp">
        <h1>Faculty Details</h1>
        <c:forEach var="faculty" items="${faculty}">
        <table>
            <tr>
                <th>Name:</th>
                <td>${faculty.fname}</td>
            </tr>
            <tr>
                <th>Course:</th>
                <td>${faculty.course}</td>
            </tr>
            <tr>
                <th>Mail id:</th>
                <td>${faculty.mailid}</td>
            </tr>
            <tr>
                <th>Phone no:</th>
                <td>${faculty.phoneno}</td>
            </tr>
            <tr>
                <td colspan="2" style="text-align: center;">
                    <input type="submit" value="Back">
                </td>
            </tr>
        </table>
        </c:forEach>
    </form>
</body>
</html>
