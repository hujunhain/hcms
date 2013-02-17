<%@ page import="com.hhpc.hcms.domain.Area" %>



<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'preArea', 'error')} ">
	<label for="preArea">
		<g:message code="area.preArea.label" default="Pre Area" />
		
	</label>
	<g:select name="preArea.id" from="${com.hhpc.hcms.domain.Area.list()}" optionKey="id" value="${areaInstance?.preArea?.id}" noSelection="['null': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: areaInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="area.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${fieldValue(bean: areaInstance, field: 'name')}" />

</div>

