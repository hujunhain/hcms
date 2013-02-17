<%@ page import="com.hhpc.hcms.domain.PosinfoState" %>



<div class="fieldcontain ${hasErrors(bean: posinfoStateInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="posinfoState.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${fieldValue(bean: posinfoStateInstance, field: 'name')}" />

</div>

