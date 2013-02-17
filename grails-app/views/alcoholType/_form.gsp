<%@ page import="com.hhpc.hcms.domain.AlcoholType" %>



<div class="fieldcontain ${hasErrors(bean: alcoholTypeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="alcoholType.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${fieldValue(bean: alcoholTypeInstance, field: 'name')}" />

</div>

