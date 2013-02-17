<%@ page import="com.hhpc.hcms.domain.OurFlag" %>



<div class="fieldcontain ${hasErrors(bean: ourFlagInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="ourFlag.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${fieldValue(bean: ourFlagInstance, field: 'name')}" />

</div>

