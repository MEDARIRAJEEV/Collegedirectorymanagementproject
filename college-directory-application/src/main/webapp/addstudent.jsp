<!DOCTYPE html>
<html>
<head>
    <meta charset='utf-8'>
    <meta http-equiv='X-UA-Compatible' content='IE=edge'>
    <title>Student Registration</title>
    <meta name='viewport' content='width=device-width, initial-scale=1'>
    <!-- Link to external stylesheet -->
    <link rel='stylesheet' type='text/css' media='screen' href='main.css'>
    <!-- Link to external JavaScript -->
    <script src='main.js'></script>
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
        form {
            width: 80%;
            max-width: 600px;
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        table {
            width: 100%;
        }
        th, td {
            padding: 10px;
        }
        input[type="text"], input[type="email"], input[type="password"] {
            width: calc(100% - 24px); /* Adjusted width for alignment */
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            float: left; /* Float input fields left for alignment */
        }
        select {
            width: calc(100% - 24px); /* Adjusted width for alignment */
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }
        .show-password-container {
            position: relative;
            width: 24px; /* Width of the container for the tick block */
            height: 38px; /* Adjusted height for alignment */
            float: left; /* Float the container left */
            margin-left: 6px; /* Adjust margin for spacing */
        }
        .show-password {
            display: block;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            cursor: pointer;
            color: #666;
            font-size: 14px;
        }
    </style>

    <script>
        function togglePassword() {
            var passwordInput = document.getElementById("password");
            var toggleIcon = document.getElementById("toggle-icon");

            if (passwordInput.type === "password") {
                passwordInput.type = "text";
                toggleIcon.textContent = "Hide";
            } else {
                passwordInput.type = "password";
                toggleIcon.textContent = "Show";
            }
        }
    </script>
</head>
<body>
    <center>
        <h1>Enter student details..</h1>
        <form action="studentreg">
            <table>
                <tr>
                    <th>name:</th>
                    <td><input type="text" name="sname"></td>
                </tr>
                <tr>
                    <th>rollno:</th>
                    <td><input type="text" name="rollno"></td>
                </tr>
                <tr>
                    <th>photo:</th>
                    <td><input type="file" name="photo"></td>
                </tr>
                <tr>
                    <th>mailid:</th>
                    <td><input type="email" name="mailid"></td>
                </tr>
                <tr>
                    <th>password:</th>
                    <td>
                        <input type="password" id="password" name="password">
                        <div class="show-password-container">
                            <span id="toggle-icon" class="show-password" onclick="togglePassword()">Show</span>
                        </div>
                    </td>
                </tr>
                <tr>
                    <th>phone no:</th>
                    <td><input type="text" name="phoneno"></td>
                </tr>
                <tr>
                    <th>course:</th>
                    <td>
                        <select name="course">
                            <option value="">Select Course</option>
                            <option value="bipc">BIPC</option>
                            <option value="mpc">MPC</option>
                            <option value="cec">CEC</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" value="Enter"></td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>
