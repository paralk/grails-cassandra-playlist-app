
<%@ page import="playlist.TrackArtist" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'trackArtist.label', default: 'TrackArtist')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-trackArtist" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-trackArtist" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list trackArtist">
			
				<g:if test="${trackArtistInstance?.artist}">
				<li class="fieldcontain">
					<span id="artist-label" class="property-label"><g:message code="trackArtist.artist.label" default="Artist" /></span>
					
						<span class="property-value" aria-labelledby="artist-label"><g:fieldValue bean="${trackArtistInstance}" field="artist"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trackArtistInstance?.genre}">
				<li class="fieldcontain">
					<span id="genre-label" class="property-label"><g:message code="trackArtist.genre.label" default="Genre" /></span>
					
						<span class="property-value" aria-labelledby="genre-label"><g:fieldValue bean="${trackArtistInstance}" field="genre"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trackArtistInstance?.musicFile}">
				<li class="fieldcontain">
					<span id="musicFile-label" class="property-label"><g:message code="trackArtist.musicFile.label" default="Music File" /></span>
					
						<span class="property-value" aria-labelledby="musicFile-label"><g:fieldValue bean="${trackArtistInstance}" field="musicFile"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trackArtistInstance?.track}">
				<li class="fieldcontain">
					<span id="track-label" class="property-label"><g:message code="trackArtist.track.label" default="Track" /></span>
					
						<span class="property-value" aria-labelledby="track-label"><g:fieldValue bean="${trackArtistInstance}" field="track"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trackArtistInstance?.trackId}">
				<li class="fieldcontain">
					<span id="trackId-label" class="property-label"><g:message code="trackArtist.trackId.label" default="Track Id" /></span>
					
						<span class="property-value" aria-labelledby="trackId-label"><g:fieldValue bean="${trackArtistInstance}" field="trackId"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${trackArtistInstance?.trackLengthSeconds}">
				<li class="fieldcontain">
					<span id="trackLengthSeconds-label" class="property-label"><g:message code="trackArtist.trackLengthSeconds.label" default="Track Length Seconds" /></span>
					
						<span class="property-value" aria-labelledby="trackLengthSeconds-label"><g:fieldValue bean="${trackArtistInstance}" field="trackLengthSeconds"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:trackArtistInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${trackArtistInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
