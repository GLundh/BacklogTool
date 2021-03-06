<!--
The MIT License

Copyright 2012 Sony Mobile Communications AB. All rights reserved.

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="shortcut icon" href="<c:url value="/resources/css/ui-lightness/images/favicon.ico" />"></link>
<link rel="stylesheet" type="text/css"
    href="<c:url value="/resources/css/styles.css" />"></link>
<link rel="stylesheet" type="text/css"
    href="<c:url value="/resources/css/ui-lightness/jquery-ui-1.8.21.custom.css" />"></link>
<script type="text/javascript"
    src="<c:url value="/resources/js/jquery-1.7.2.min.js" />"></script>
<script type="text/javascript"
    src="<c:url value="/resources/js/jquery-ui-1.8.21.custom.min.js" />"></script>

<script type="text/javascript">
    $(document).ready(function () {
        $("#submit").button();
    });
</script>

<title>Backlog tool - Login</title>
</head>

<body>
    <header>
        <h1>
            <a href="${pageContext.request.contextPath}/${area.name}">
                <p id="topic" class="textstyle inline">Backlog tool</p>
            </a>
        </h1>
        <br style="clear:both" />
    </header>
    <div id="list-container-div">
        <form action="../j_spring_security_check" method="post">
            <p>
                <label for="j_username" class="view textstyle">Username</label>
                <input id="j_username" name="j_username" type="text" />
            </p>
            <p>
                <label for="j_password" class="view textstyle">Password</label>
                <input id="j_password" name="j_password" type="password" />
            </p>
            <input id="submit" type="submit" value="Login" />
        </form>
        <div id="login-error"><p class="view error-message">${errorMsg}</p></div>
    </div>
</body>

</html>
