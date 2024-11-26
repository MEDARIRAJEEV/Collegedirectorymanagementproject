<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Page Title</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        center {
            margin-top: 50px;
        }

        form {
            background-color: #fff;
            width: 400px;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            position: relative; /* Ensure relative positioning for the tick mark */
        }

        h1 {
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table th {
            text-align: left;
            padding: 8px;
            width: 50%; /* Adjust the width of the table headers */
        }

        table td {
            padding: 8px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"],
        input[type="submit"] {
            width: calc(100% - 16px);
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        select {
            width: calc(100% - 16px);
            padding: 10px;
            margin: 5px 0;
            box-sizing: border-box;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 16px;
        }

        input[type="submit"] {
            background-color: #4CAF50;
            color: white;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        /* Inline CSS for Show/Hide Password Toggle */
        .password-toggle {
            position: absolute;
            top: 50%;
            right: 10px;
            transform: translateY(-50%);
            cursor: pointer;
            color: #666;
            font-size: 14px;
        }

        .password-toggle::before {
            content: "\2713"; /* Unicode for check mark */
            display: block;
            position: absolute;
            top: 0;
            right: -25px; /* Adjust the position of the check mark */
            font-size: 20px;
            color: #ccc;
            cursor: pointer;
        }

        .password-toggle.show-password::before {
            content: "\1f441"; /* Unicode for eye */
            color: #666;
        }
    </style>

    <script>
        function togglePassword() {
            var passwordInput = document.getElementById("password");
            var toggleIcon = document.getElementById("toggle-icon");

            if (passwordInput.type === "password") {
                passwordInput.type = "text";
                toggleIcon.classList.add("show-password");
            } else {
                passwordInput.type = "password";
                toggleIcon.classList.remove("show-password");
            }
        }
    </script>
</head>
<body>
    <center>
    <form action="facultyreg">
        <h1>Enter faculty details..</h1>
        <table>
            <tr>
                <th>Name:</th>
                <th><input type="text" name="fname"></th>
            </tr>
            <tr>
                <th>Course:</th>
                <th>
                    <select name="course">
                        <option value="bipc">BIPC</option>
                        <option value="mpc">MPC</option>
                        <option value="cec">CEC</option>
                    </select>
                </th>
            </tr>
            <tr>
                <th>Phone no:</th>
                <th><input type="text" name="phoneno"></th>
            </tr>
            <tr>
                <th>Mail id:</th>
                <th><input type="email" name="mailid"></th>
            </tr>
            <tr>
                <th>Password:</th>
                <th style="position: relative;">
                    <input type="password" id="password" name="password">
                    <span id="toggle-icon" class="password-toggle" onclick="togglePassword()"></span>
                </th>
            </tr>
            <tr>
                <th> </th>
                <th><input type="submit" value="Register"></th>
                <th><a href="admin.jsp">getBack</a></th>
            </tr>

        </table>
    </form>
    </center>
</body>
</html>
