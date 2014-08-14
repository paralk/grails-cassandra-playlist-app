
<%@ page import="playlist.PersonLastNamePartitionKey" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'personLastNamePartitionKey.label', default: 'PersonLastNamePartitionKey')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-personLastNamePartitionKey" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-personLastNamePartitionKey" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="age" title="${message(code: 'personLastNamePartitionKey.age.label', default: 'Age')}" />
					
						<g:sortableColumn property="firstName" title="${message(code: 'personLastNamePartitionKey.firstName.label', default: 'First Name')}" />
					
						<g:sortableColumn property="lastName" title="${message(code: 'personLastNamePartitionKey.lastName.label', default: 'Last Name')}" />
					
						<g:sortableColumn property="location" title="${message(code: 'personLastNamePartitionKey.location.label', default: 'Location')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${personLastNamePartitionKeyInstanceList}" status="i" var="personLastNamePartitionKeyInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${personLastNamePartitionKeyInstance.id}">${fieldValue(bean: personLastNamePartitionKeyInstance, field: "age")}</g:link></td>
					
						<td>${fieldValue(bean: personLastNamePartitionKeyInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: personLastNamePartitionKeyInstance, field: "lastName")}</td>
					
						<td>${fieldValue(bean: personLastNamePartitionKeyInstance, field: "location")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${personLastNamePartitionKeyInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
