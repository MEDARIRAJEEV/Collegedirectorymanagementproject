<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Student Details</title>
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
        }
        table {
            width: 90%;
            margin: 20px auto;
            border-collapse: collapse;
            background-color: #fff;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
        }
        th, td {
            padding: 12px;
            border-bottom: 1px solid #ddd;
        }
        th {
            background-color: #007bff;
            color: #fff;
        }
        td img {
            max-width: 100px; /* Adjust this value as needed */
            height: auto;
            border-radius: 4px;
            object-fit: cover; /* Ensures the image covers the space without distortion */
        }
        tr:nth-child(even) {
            background-color: #f9f9f9;
        }
        tr:hover {
            background-color: #f1f1f1; /* Optional: highlight row on hover for better visibility */
        }
    </style>
</head>
<body>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <h1>All Student Details</h1>
    <table>
        <tr>
            <th>Sno</th>
            <th>Student Name</th>
            <th>Student Photo</th>
            <th>Roll No</th>
            <th>Phone No</th>
            <th>Mail ID</th>
            <th>Course</th>
            <th>Marks</th>
            <th>Grade</th>
        </tr>
        <c:forEach var="student" items="${students}">
            <tr>
                <td>${student.id}</td>
                <td>${student.sname}</td>
                <td><img src="${student.photo}" alt="Student Photo"></td>
            
                <td>${student.rollno}</td>
                <td>${student.phoneno}</td>
                <td>${student.mailid}</td>
                <td>${student.course}</td>
                <td>${student.marks}</td>
                <td>${student.grade}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
