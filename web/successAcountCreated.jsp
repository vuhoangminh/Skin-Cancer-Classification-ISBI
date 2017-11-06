
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>


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
    textforgot
    {
        color: white;
    }

</style>

<head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script>
        $(document).ready(function(){

            $("#imageUpload").click(function(){
                $("#createAcountform").hide();
                $("#fileupload").show();
                $("#p1").hide();
            });
            $("#createAcountButton").click(function(){
                $("#createAcountform").show();
                $("#fileupload").hide();
                $("#p1").hide();
            });
        });
    </script>
</head>
<body>

<!--Buttons-->
<div class="wrapper">
    <span style="display:inline-block; width: 4px;"></span>
    <button id="createAcountButton" class="buttontop" style="font-size : 18px"><b>Create Account</b></button>
    <span style="display:inline-block; width: 15px;"></span>
    <button id="imageUpload" class="buttontop" style="font-size : 18px"><b>Upload image</b></button>
</div>


<!--Create account form-->
<form id="createAcountform" action="./createAcount.action" style="text-align: center;">
    <center>
        <div id="createAcount-div" style="margin-left:10px;  display:inline-block; border: 3px solid #f1f1f1; width:50%; border-style:solid">
            <div class="container">
                <label><b>First Name*</b></label>
                <input type="text" placeholder="Enter First Name" name="fname" required>

                <label><b>Last Name*</b></label>
                <input type="text" placeholder="Enter Last Name" name="lname" required>

                <label><b>E-mail Address*</b></label>
                <input type="text" placeholder="Enter E-mail" name="email" required>

                <label style=" text-align: left;"><b>Password*</b></label>
                <input type="password" placeholder="Enter Password" name="pwd" required>
                <br>
                <button type="submit" class="psw"><b>Register</b></button>
                <span style="display:inline-block; width: 15px;"></span>
                <button style="background:#9E9E9E" onclick="window.location.href='index.html'">Home</button>
            </div>
        </div>
    </center>
</form>


<!--File Upload in form-->
<form id="fileupload" action="./upload.action" method="post" enctype="multipart/form-data" style="display:none ">

    <center>
        <div id="login-div" style=" margin-left:10px;  display:inline-block; border: 3px solid #f1f1f1; width:50%; border-style:solid">
            <div class="container">
                <label style="text-align: left;"><b>Enter Registered E-mail*</b></label>
                <input type="text" placeholder="Enter Registered E-mail	" name="emailAddress" required style="text-align: left"><br>
                <span style="display:block; height: 30px;"></span>
                <label style="text-align: left;" for="myFile"><b>Upload your file*</b></label>
                <span style="display:block; height: 10px;"></span>
                <div class="gap"></div>
                <center>
                    <input type="file" style="width:200px" name="myFile"/> <br>
                </center>
                <span style="display:block; height: 30px;"></span>
                <button type="submit">Upload</button>
                <span style="display:inline-block; width: 15px;"></span>
                <button style="background:#9E9E9E" onclick="window.location.href='index.html'">Home</button>
            </div>
        </div>
    </center>
</form>


<p style="text-align: center;color: #f8198d">

    <span > <a href="./forgetPassword.jsp"> forget password?</a></span>
</p>
<p id="p1"style="text-align: center;color:green">
    <s:property value="message"/>
</p>
</body>
</html>
