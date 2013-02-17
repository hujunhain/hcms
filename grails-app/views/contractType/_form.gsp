<%@ page import="com.hhpc.hcms.domain.ContractType" %>



<div class="fieldcontain ${hasErrors(bean: contractTypeInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="contractType.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${fieldValue(bean: contractTypeInstance, field: 'name')}" />

</div>

