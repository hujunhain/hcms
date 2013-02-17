<%@ page import="com.hhpc.hcms.domain.Dealer" %>



<div class="fieldcontain ${hasErrors(bean: dealerInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="dealer.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="area.id" from="${com.hhpc.hcms.domain.Area.list()}" optionKey="id" value="${dealerInstance?.area?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: dealerInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="dealer.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${fieldValue(bean: dealerInstance, field: 'name')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: dealerInstance, field: 'posinfos', 'error')} ">
	<label for="posinfos">
		<g:message code="dealer.posinfos.label" default="Posinfos" />
		
	</label>
	
<ul>
<g:each in="${dealerInstance?.posinfos}" var="posinfoCooperationInstance">
    <li><g:link controller="posinfoCooperation" action="show" id="${posinfoCooperationInstance.id}">${posinfoCooperationInstance?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="posinfoCooperation" params="['dealer.id': dealerInstance?.id]" action="create"><g:message code="posinfoCooperation.new" default="New PosinfoCooperation" /></g:link>


</div>

