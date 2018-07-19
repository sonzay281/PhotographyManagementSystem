<%@taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%--<c:set property="SITE_URL" value="${pageContext.request.contextPath}"></c:set>--%>
<!DOCTYPE html>
<html lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="${pageContext.request.contextPath}/assets/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" type="text/css" media="screen" href="${pageContext.request.contextPath}/assets/css/style.css">
    </head>
    <body>
        <div class="main-loader">
            <div class="container">
                <div class="header">
                    <p class="white">LOGIN</p>
                    <img src="${pageContext.request.contextPath}/assets/images/icon/login.png" height="50" width="50">
                </div>
                <div class="login-panel">
                    <form method="post" action="/admin/">
                        <input class="email" type="email" name="username" placeholder="EMAIL/USERNAME" required="required"/>
                        <input class="password" type="password" name="password" placeholder="PASSWORD" required="required"/>
                        <div class="pad-1">
                            <input type="checkbox" name="checkbox" id="checkbox" /> &nbsp;
                            <label for="checkbox"> Keep me logged in.</label>
                        </div>
                        <button type="submit"> <b>LOGIN</b> </button>
                    </form>
                    <p class="pad-1"><a href="/reset">Forget password?</a></p>
                </div>
            </div>
            <p class="developer">Designed by:Sanjaya Sapkota</p>
        </div>
    </body>
</html>
