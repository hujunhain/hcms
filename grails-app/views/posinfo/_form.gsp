<%@ page import="com.hhpc.hcms.domain.Posinfo" %>



<div class="fieldcontain ${hasErrors(bean: posinfoInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="posinfo.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${fieldValue(bean: posinfoInstance, field: 'address')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="posinfo.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="area.id" from="${com.hhpc.hcms.domain.Area.list()}" optionKey="id" value="${posinfoInstance?.area?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoInstance, field: 'baseSales', 'error')} ">
	<label for="baseSales">
		<g:message code="posinfo.baseSales.label" default="Base Sales" />
		
	</label>
	
<ul>
<g:each in="${posinfoInstance?.baseSales}" var="posinfoBaseSaleInstance">
    <li><g:link controller="posinfoBaseSale" action="show" id="${posinfoBaseSaleInstance.id}">${posinfoBaseSaleInstance?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="posinfoBaseSale" params="['posinfo.id': posinfoInstance?.id]" action="create"><g:message code="posinfoBaseSale.new" default="New PosinfoBaseSale" /></g:link>


</div>

<div class="fieldcontain ${hasErrors(bean: posinfoInstance, field: 'createDate', 'error')} required">
	<label for="createDate">
		<g:message code="posinfo.createDate.label" default="Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createDate" value="${posinfoInstance?.createDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoInstance, field: 'engage', 'error')} required">
	<label for="engage">
		<g:message code="posinfo.engage.label" default="Engage" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="engage" value="${fieldValue(bean: posinfoInstance, field: 'engage')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoInstance, field: 'feePeriod', 'error')} ">
	<label for="feePeriod">
		<g:message code="posinfo.feePeriod.label" default="Fee Period" />
		
	</label>
	<g:textField name="feePeriod" value="${fieldValue(bean: posinfoInstance, field: 'feePeriod')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoInstance, field: 'fullName', 'error')} ">
	<label for="fullName">
		<g:message code="posinfo.fullName.label" default="Full Name" />
		
	</label>
	<g:textField name="fullName" value="${fieldValue(bean: posinfoInstance, field: 'fullName')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="posinfo.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${fieldValue(bean: posinfoInstance, field: 'name')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="posinfo.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="state.id" from="${com.hhpc.hcms.domain.PosinfoState.list()}" optionKey="id" value="${posinfoInstance?.state?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="posinfo.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type.id" from="${com.hhpc.hcms.domain.PosinfoType.list()}" optionKey="id" value="${posinfoInstance?.type?.id}"  />

</div>

