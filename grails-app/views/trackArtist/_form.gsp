<%@ page import="playlist.TrackArtist" %>



<div class="fieldcontain ${hasErrors(bean: trackArtistInstance, field: 'artist', 'error')} ">
	<label for="artist">
		<g:message code="trackArtist.artist.label" default="Artist" />
		
	</label>
	<g:textField name="artist" value="${trackArtistInstance?.artist}" />

</div>

<div class="fieldcontain ${hasErrors(bean: trackArtistInstance, field: 'genre', 'error')} ">
	<label for="genre">
		<g:message code="trackArtist.genre.label" default="Genre" />
		
	</label>
	<g:textField name="genre" value="${trackArtistInstance?.genre}" />

</div>

<div class="fieldcontain ${hasErrors(bean: trackArtistInstance, field: 'musicFile', 'error')} ">
	<label for="musicFile">
		<g:message code="trackArtist.musicFile.label" default="Music File" />
		
	</label>
	<g:textField name="musicFile" value="${trackArtistInstance?.musicFile}" />

</div>

<div class="fieldcontain ${hasErrors(bean: trackArtistInstance, field: 'track', 'error')} ">
	<label for="track">
		<g:message code="trackArtist.track.label" default="Track" />
		
	</label>
	<g:textField name="track" value="${trackArtistInstance?.track}" />

</div>

<div class="fieldcontain ${hasErrors(bean: trackArtistInstance, field: 'trackId', 'error')} ">
	<label for="trackId">
		<g:message code="trackArtist.trackId.label" default="Track Id" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: trackArtistInstance, field: 'trackLengthSeconds', 'error')} ">
	<label for="trackLengthSeconds">
		<g:message code="trackArtist.trackLengthSeconds.label" default="Track Length Seconds" />
		
	</label>
	<g:field type="number" name="trackLengthSeconds" value="${trackArtistInstance.trackLengthSeconds}" />

</div>

