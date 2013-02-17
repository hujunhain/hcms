<%@ page import="com.hhpc.hcms.domain.CooperationType" %>



<div class="fieldcontain ${hasErrors(bean: cooperationTypeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="cooperationType.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${fieldValue(bean: cooperationTypeInstance, field: 'name')}" />

</div>

