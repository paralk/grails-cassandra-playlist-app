<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Playlist</title>
<meta name="layout" content="main">

</head>
<body>	
	<g:if test="${flash.message}">
		<div class="message" role="status">
			${flash.message}
		</div>
	</g:if>
	<g:hasErrors>
		<ul class="errors" role="alert">
			<g:eachError var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message	error="${error}" /></li>
			</g:eachError>
		</ul>
	</g:hasErrors>	
	<g:form url="[resource:track, action:'save']" class="login_form">
		<h1>Add A Track</h1>
		
		<p>
			<label for="musicFile">Track Id</label> 
			<g:field type="text" name="musicFile" value="${track?.musicFile}" placeholder="Enter the Music File Name" required="true"/>				
		</p>
		<p>
			<label for="artist">Artist</label> 
			<g:field type="text" name="artist" value="${track?.artist}" placeholder="Artist name" required="true"/>				
		</p>
		<p>
			<select id="genre" name="genre">
				<g:each var="g" in="${application.genres}">
					<option value="${g}">
						${g}
					</option>
				</g:each>
			</select> 
			<label for="genre">Genre</label> Genre
		</p>
		<p>
			<label for="track">Track Name</label> 
			<g:field type="text" name="track" value="${track?.track}" placeholder="Track name" required="true"/>				
		</p>
		<p>
			<label for="trackLengthSeconds">Track Name</label> 
			<g:field type="text" name="trackLengthSeconds" value="${track?.trackLengthSeconds}" placeholder="Track Length (s)" required="true"/>				
		</p>
	
			
		<button type="submit" name="button" id="addTrack" value="addTrack">Add Track</button>
		<button type="reset" id="reset">Clear Form</button>
		
	</g:form>

</body>
</html>
