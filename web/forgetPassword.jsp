<!-- Header

<%--
  Created by IntelliJ IDEA.
  User: Shemamu
  Date: 6/20/2017
  Time: 12:25 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %> -->
<html>
<style>
    form {
        /*border: 3px solid #f1f1f1;*/
    }

    input[type=text], input[type=password] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    button {
        background-color: #179b77;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 24%;
    }

    button:hover {
        opacity: 0.8;
    }

    .cancelbtn {
        width: auto;
        padding: 10px 18px;
        background-color: #f44336;
    }

    .imgcontainer {
        text-align: center;
        margin: 24px 0 12px 0;
    }

    img.avatar {
        width: 40%;
        border-radius: 50%;
    }

    .wrapper {
        text-align: center;
    }

    .container {
        padding: 20px;
        color: #ffffff;
        font: normal 16px "Roboto", "Helvetica Neue", Helvetica, Arial, sans-serif;
        font-weight: 300;
        background-color: #12202b;
        overflow-x: hidden;
        line-height: 1.5;
        font-family: 'Lato', sans-serif;
        text-rendering: optimizeLegibility !important;
        -webkit-font-smoothing: antialiased !important;
    }

    span.psw {
        padding-top: 16px;
    }

    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
        span.psw {
            display: block;
            float: none;
        }
        .cancelbtn {
            width: 100%;
        }
    }
    body {
        color: #ffffff;
        font: normal 16px "Roboto", "Helvetica Neue", Helvetica, Arial, sans-serif;
        font-weight: 300;
        background-color: #ffffff ;
        overflow-x: hidden;
        line-height: 1.5;
        font-family: 'Lato', sans-serif;
        text-rendering: optimizeLegibility !important;
        -webkit-font-smoothing: antialiased !important;
    }
    .buttontop
    {
        background-color: #616161;
    }
    .containerfull
    {
        background-color: #12202b;
    }
    }
</style>

<head>
</head>
<body>


<form id="forgetpwd" action="./forgetPWD.action" style=" text-align: center;">

    <div id="login-div" style=" margin-left:10px;  display:inline-block; border: 3px solid #f1f1f1; width:50%; border-style:solid">

        <div class="container">
            <label style=" text-align: left;"><b>Forgot password?</b></label>
            <input type="text" placeholder="Enter your email to reset" name="userEmail" required>
            <center>
                <button type="submit">Submit</button>
                <span style="display:inline-block; width: 15px;"></span>
                <button style="background:#9E9E9E" onclick="window.location.href='index.html'">Back</button>
            </center>
        </div>
    </div>
</form>

</body>

</html>