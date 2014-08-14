
<%@ page import="playlist.TrackArtist" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trackArtist.label', default: 'TrackArtist')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-trackArtist" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-trackArtist" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="artist" title="${message(code: 'trackArtist.artist.label', default: 'Artist')}" />
					
						<g:sortableColumn property="genre" title="${message(code: 'trackArtist.genre.label', default: 'Genre')}" />
					
						<g:sortableColumn property="musicFile" title="${message(code: 'trackArtist.musicFile.label', default: 'Music File')}" />
					
						<g:sortableColumn property="track" title="${message(code: 'trackArtist.track.label', default: 'Track')}" />
					
						<g:sortableColumn property="trackId" title="${message(code: 'trackArtist.trackId.label', default: 'Track Id')}" />
					
						<g:sortableColumn property="trackLengthSeconds" title="${message(code: 'trackArtist.trackLengthSeconds.label', default: 'Track Length Seconds')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${trackArtistInstanceList}" status="i" var="trackArtistInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" params="[artist: trackArtistInstance.artist, track:trackArtistInstance.track, trackId: trackArtistInstance.trackId]">${fieldValue(bean: trackArtistInstance, field: "artist")}</g:link></td>
					
						<td>${fieldValue(bean: trackArtistInstance, field: "genre")}</td>
					
						<td>${fieldValue(bean: trackArtistInstance, field: "musicFile")}</td>
					
						<td>${fieldValue(bean: trackArtistInstance, field: "track")}</td>
					
						<td>${fieldValue(bean: trackArtistInstance, field: "trackId")}</td>
					
						<td>${fieldValue(bean: trackArtistInstance, field: "trackLengthSeconds")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${trackArtistInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
