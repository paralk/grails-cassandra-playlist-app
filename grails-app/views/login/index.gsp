<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>   
    <title>Playlist</title>
    <meta name="layout" content="main"/>
</head>
<body>
<g:if test="${error}">
<p class="error">  
    ${error}
</p>
</g:if>
<g:form class="login_form" method="post" action="login">
    <h1>PLAYLIST LOGIN</h1>
    <p>
        <label for="username">User Name</label>
        <input id="username" type="text" name="username" placeholder="Enter your user name here" required>
    </p>
    <p>
        <label for="password">Password</label>
        <input id="password" type="password" name="password" placeholder="Password" required>
    </p>

    <p>
        <button type="submit" name="button" id="login" value="login">Login</button>
        <button type="submit" name="button" id="register" value="newAccount">I Don't Have an Account</button>
    </p>
</g:form>

</body>
</html>
