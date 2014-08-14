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
    <g:if test="${params.genre}">
    	<h2>${params.genre} Songs</h2>
    </g:if>
    <g:elseif test="${params.artist}">
    	<h2>Songs By ${params.artist}</h2>
    </g:elseif>
    <g:else>
    	<h2>Click a Genre or Artist Letter Above</h2>
    </g:else>
    
     <script type="text/javascript">
        // When someone clicks the '+' button in the track picker, send a message to the parent window
        function addTrack(id) {
            parent.postMessage(id, '*');
        }
    </script>

    <%--Only show the drop-down if it's by Genre--%>
    <g:if test="${params.genre}">
        <form id="howmany" name="howmany" method="get">
            <input type="hidden" name="genre" value="${params.genre}"/>
            <input type="hidden" name="artist" value="${params.artist}"/>                           
            <select onchange="this.form.submit()" id="howmanyform" name="howmany">
                <g:each var="opt" in="${['All', '5', '10', '25', '100']}">
                    <option <g:if test="${opt == howmany}"> selected="selected" </g:if>>${opt}</option>
                </g:each>
            </select>
        </form>
    </g:if>

    <g:form method="post" action="star">
        <input type="hidden" name="howmany" value="${params.howmany}"/>
        <input type="hidden" name="artist" value="${params.artist}"/>
        <input type="hidden" name="genre" value="${params.genre}"/>
        <table class="table">
            <g:each var="track" in="${tracks}">
                <tr>
                    <g:set var="startype" value="${track.starred ? 'yellowstar.png' : 'emptystar.png'}"/>
                    <g:if test="${!params.frame}">
                        <td class="field_start">
                            <button name="star" value="${track.trackId}"><asset:image src="${startype}"/></button>
                        </td>
                    </g:if>
                    <g:if test="${params.frame == 'true'}">
                        <td class="field_plus"><input type="button" name="add" value="+" onclick="addTrack('${track.trackId}')"/></td>
                    </g:if>
                     
                    <td class="field_track">${track.track}</td>
                    <td class="field_genre">${track.genre}</td>
                    <td class="field_sec">
                       <g:formatNumber number="${track.trackLengthSeconds / 60}" minIntegerDigits="1" maxFractionDigits="0"/>:
                       <g:formatNumber number="${track.trackLengthSeconds % 60}" minIntegerDigits="2"/>
                    </td>
                </tr>
            </g:each>
        </table>
    </g:form>
</section>
</body>
</html>
