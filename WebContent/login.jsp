<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Portfolio Item - Start Bootstrap Template</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/shop-homepage.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">

</head>

<%
    if(request.getParameter("isSuccessLogout") != null && request.getParameter("isSuccessLogout").equals("true")){
        pageContext.setAttribute("info", "You are log out");
    }
%>

<body>

<%@include file="head.jsp"%>
<c:if test="${info != null && info.length()>0}">
    <div class="alert alert-danger" role="alert">
    ${info}
    </div>
</c:if>
    <div class="container">

        <div class="row" id="pwd-container">
            <div class="col-md-4"></div>

            <div class="col-md-4">
                <section class="login-form">
                    <form method="post" action="/login" role="login">
                        <img src="http://i.imgur.com/RcmcLv4.png" class="img-responsive" alt="" />
                        <input type="email" name="email" placeholder="Email" required class="form-control input-lg" value="joestudent@gmail.com" />

                        <input type="password" name="password" class="form-control input-lg" id="password" placeholder="Password" required="" />


                        <div class="pwstrength_viewport_progress"></div>


                        <button type="submit" name="go" class="btn btn-lg btn-primary btn-block">Sign in</button>
                        <div>
                            <a href="#">Create account</a> or <a href="#">reset password</a>
                        </div>

                    </form>

                    <div class="form-links">
                        <a href="#">www.website.com</a>
                    </div>
                </section>
            </div>

            <div class="col-md-4"></div>


        </div>




    </div>

</body>

</html>
