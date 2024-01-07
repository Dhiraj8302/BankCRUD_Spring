<%@page import="java.util.List"%>
<%@page import="bank.model.Register"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Retrieve Record - Banking Website</title>
    <style>
    
    	 table {
            border-collapse: collapse;
        width: 50%;
        margin: 20px auto;
        background-color: #ffffff;
        }

        th, td {
            border: 1px solid #ccc;
            padding: 8px;
            text-align: left;
            color: #333;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }
    	
        body {
            background: linear-gradient(to right, #0072bb, #00a8e8);
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            color: #fff;
        }

        header {
            background: linear-gradient(to right, #0072bb, #00a8e8);
            color: #fff;
            padding: 20px;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 36px;
        }

        header p {
            font-size: 18px;
        }

        nav {
            background: linear-gradient(to right, #0072bb, #00a8e8);
            color: #fff;
            padding: 10px 0;
        }

        nav ul {
            list-style-type: none;
            padding: 0;
            margin: 0;
            display: flex;
            justify-content: space-around;
        }

        nav li {
            margin: 0;
        }

        nav a {
            text-decoration: none;
            color: #fff;
            font-weight: bold;
            font-size: 16px;
            padding: 10px 20px;
            transition: background-color 0.3s ease, color 0.3s ease;
        }

        nav a:hover {
            background: linear-gradient(to right, #00a8e8, #0072bb);
            color: #fff;
        }

        .container {
            text-align: center;
            padding: 20px;
        }

        .form-container {
            background-color: rgba(255, 255, 255, 0.9);
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            width: 300px;
            margin: 0 auto;
        }

        form {
            display: flex;
            flex-direction: column;
        }

        input[type="text"] {
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
            font-size: 16px;
        }

        input[type="submit"] {
            background: linear-gradient(to right, #0072bb, #00a8e8);
            color: #fff;
            border: none;
            padding: 10px 15px;
            font-size: 16px;
            cursor: pointer;
            margin-top: 10px;
            border-radius: 3px;
        }
    </style>
</head>
<body>
    <header>
        <h1>Welcome to Our Bank</h1>
        <p>Retrieve Record</p>
    </header>
    <nav>
        <ul>
            <li><a href="Home.html">Home</a></li>
            <li><a href="#">About Us</a></li>
            <li><a href="#">Contact Us</a></li>
        </ul>
    </nav>
    <div class="container">
        <div class="form-container">
            <form action="DisplayAllController">
                <input type="submit" value="DisplayAll">
            </form>
        </div>
    </div>
    
    


</body>
</html>

