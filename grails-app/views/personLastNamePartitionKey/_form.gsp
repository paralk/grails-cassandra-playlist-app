<%@ page import="playlist.PersonLastNamePartitionKey" %>



<div class="fieldcontain ${hasErrors(bean: personLastNamePartitionKeyInstance, field: 'age', 'error')} ">
	<label for="age">
		<g:message code="personLastNamePartitionKey.age.label" default="Age" />
		
	</label>
	<g:field type="number" name="age" value="${personLastNamePartitionKeyInstance.age}" />

</div>

<div class="fieldcontain ${hasErrors(bean: personLastNamePartitionKeyInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="personLastNamePartitionKey.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${personLastNamePartitionKeyInstance?.firstName}" />

</div>

<div class="fieldcontain ${hasErrors(bean: personLastNamePartitionKeyInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="personLastNamePartitionKey.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${personLastNamePartitionKeyInstance?.lastName}" />

</div>

<div class="fieldcontain ${hasErrors(bean: personLastNamePartitionKeyInstance, field: 'location', 'error')} ">
	<label for="location">
		<g:message code="personLastNamePartitionKey.location.label" default="Location" />
		
	</label>
	<g:textField name="location" value="${personLastNamePartitionKeyInstance?.location}" />

</div>

