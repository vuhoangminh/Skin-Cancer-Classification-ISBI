
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
<head>
    <style>
        input[type=text], select, textarea {
            width: 100%;
            padding: 12px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
            margin-top: 6px;
            margin-bottom: 16px;
            resize: vertical;
        }

        input[type=submit] {
            background-color: #4CAF50;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        input[type=submit]:hover {
            background-color: #45a049;
        }

        .container {
            border-radius: 5px;
            background-color: #f2f2f2;
            padding: 20px;
            width: 50%;
            text-align: center;
        }
    </style>
</head>
<body>

<h3>Contact Form</h3>

<div class="container">
    <form action="./contactUsAction.action" style="text-align: center">
        <label for="fname">First Name</label>
        <input type="text" id="fname" name="fname" placeholder="Your name..">

        <input type="text" placeholder="Enter your registered email" name="email" required>

        <label for="subject">Subject</label>
        <textarea id="subject" name="messagebody" placeholder="Write something.." style="height:200px"></textarea>

        <button type="submit">Submit</button>
    </form>
</div>
<p id="p1"style="text-align: center;color: red">
    <s:property value="message"/>
</p>
</body>
</html>

