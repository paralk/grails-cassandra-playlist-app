<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta name="layout" content="main">    
    <title>Artists</title>        
</head>
<body>
<section class="menu small">

    <g:render template="../trackheader"/>
    <form id="form1" name="form1" method="get" action="">
        <input type="hidden" id="q" name="q" value="${q}"/>
        <button name="order" value="up">↑</button>
        <button name="order" value="down">↓</button>
        <h2>Artists starting with "${q}"</h2>
        <table>                        
            <g:each var="artist" in="${artists}">
                <tr>
                    <td><g:link controller="track" params="[artist: artist, frame: frame]" elementId="artist_table">${artist}</g:link></td>
                </tr>
            </g:each>
        </table>
    </form>
</section>
</body>
</html>
