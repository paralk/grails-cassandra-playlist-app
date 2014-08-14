<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>   
    <title>Playlist</title>
    <meta name="layout" content="main"/>

</head>
<body>
<section class="menu small">
    <g:link uri="">Home</g:link>
    <g:link controller="login" action="logout">Logout</g:link>
    <br/>
    <h2>Playlists for ${session.user?.username}</h2>

    <g:form class="playlist_form" method="post" action="save">
    <label for="playlistName">New Playlist Name</label>
        <input id="playlistName" type="text" name="playlistName"/>
        <input type="submit" name="button" id="add" value="Add" />
        <br/>

    <table>
        <g:each var="playlistName" in="${session.user?.playlistNames}">
            <tr>
                <td>
                	<g:link action="delete" params="[playlistName: playlistName]">-</g:link>                    
                </td>
                <td>
                	<g:link action="show" params="[playlistName: playlistName]">${playlistName}</g:link>                       
                </td>
            </tr>
        </g:each>
    </table>
    </g:form>
</section>
</body>
</html>
