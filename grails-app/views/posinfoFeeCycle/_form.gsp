<%@ page import="com.hhpc.hcms.domain.PosinfoFeeCycle" %>



<div class="fieldcontain ${hasErrors(bean: posinfoFeeCycleInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="posinfoFeeCycle.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${fieldValue(bean: posinfoFeeCycleInstance, field: 'name')}" />

</div>

