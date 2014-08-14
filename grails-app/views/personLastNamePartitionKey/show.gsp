
<%@ page import="playlist.PersonLastNamePartitionKey" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personLastNamePartitionKey.label', default: 'PersonLastNamePartitionKey')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-personLastNamePartitionKey" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-personLastNamePartitionKey" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list personLastNamePartitionKey">
			
				<g:if test="${personLastNamePartitionKeyInstance?.age}">
				<li class="fieldcontain">
					<span id="age-label" class="property-label"><g:message code="personLastNamePartitionKey.age.label" default="Age" /></span>
					
						<span class="property-value" aria-labelledby="age-label"><g:fieldValue bean="${personLastNamePartitionKeyInstance}" field="age"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personLastNamePartitionKeyInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="personLastNamePartitionKey.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${personLastNamePartitionKeyInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personLastNamePartitionKeyInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="personLastNamePartitionKey.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${personLastNamePartitionKeyInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${personLastNamePartitionKeyInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="personLastNamePartitionKey.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${personLastNamePartitionKeyInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:personLastNamePartitionKeyInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${personLastNamePartitionKeyInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
