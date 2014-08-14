<g:if test="${!frame}">
    <div id="topmatter" class="alphabet">        
        <g:link elementId="homebutton" uri="" >Home</g:link>
        <g:link controller="track" action="create">Add a Song</g:link>
    </div>
</g:if>

<div class="alphabet">
    <g:each in="${application.genres}">
    	<g:link controller="track" params="[genre: it, frame: frame]">${it}</g:link>        
    </g:each>
    <hr/>
    <g:each in="${application.letters}">
    	<g:link controller="artist" params="[q: it, frame: frame]">${it}</g:link>&nbsp;&nbsp;
    </g:each>
    <hr/>
</div>

