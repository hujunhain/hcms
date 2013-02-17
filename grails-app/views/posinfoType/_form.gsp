<%@ page import="com.hhpc.hcms.domain.PosinfoType" %>



<div class="fieldcontain ${hasErrors(bean: posinfoTypeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="posinfoType.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${fieldValue(bean: posinfoTypeInstance, field: 'name')}" />

</div>

