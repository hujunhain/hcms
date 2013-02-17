<%@ page import="com.hhpc.hcms.domain.PubPosinfo" %>



<div class="fieldcontain ${hasErrors(bean: pubPosinfoInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="pubPosinfo.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${fieldValue(bean: pubPosinfoInstance, field: 'address')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="pubPosinfo.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="area.id" from="${com.hhpc.hcms.domain.Area.list()}" optionKey="id" value="${pubPosinfoInstance?.area?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoInstance, field: 'barNum', 'error')} required">
	<label for="barNum">
		<g:message code="pubPosinfo.barNum.label" default="Bar Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="barNum" value="${fieldValue(bean: pubPosinfoInstance, field: 'barNum')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoInstance, field: 'barRate', 'error')} required">
	<label for="barRate">
		<g:message code="pubPosinfo.barRate.label" default="Bar Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="barRate" value="${fieldValue(bean: pubPosinfoInstance, field: 'barRate')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoInstance, field: 'baseSales', 'error')} ">
	<label for="baseSales">
		<g:message code="pubPosinfo.baseSales.label" default="Base Sales" />
		
	</label>
	
<ul>
<g:each in="${pubPosinfoInstance?.baseSales}" var="posinfoBaseSaleInstance">
    <li><g:link controller="posinfoBaseSale" action="show" id="${posinfoBaseSaleInstance.id}">${posinfoBaseSaleInstance?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="posinfoBaseSale" params="['pubPosinfo.id': pubPosinfoInstance?.id]" action="create"><g:message code="posinfoBaseSale.new" default="New PosinfoBaseSale" /></g:link>


</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoInstance, field: 'createDate', 'error')} required">
	<label for="createDate">
		<g:message code="pubPosinfo.createDate.label" default="Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createDate" value="${pubPosinfoInstance?.createDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoInstance, field: 'engage', 'error')} required">
	<label for="engage">
		<g:message code="pubPosinfo.engage.label" default="Engage" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="engage" value="${fieldValue(bean: pubPosinfoInstance, field: 'engage')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoInstance, field: 'feePeriod', 'error')} ">
	<label for="feePeriod">
		<g:message code="pubPosinfo.feePeriod.label" default="Fee Period" />
		
	</label>
	<g:textField name="feePeriod" value="${fieldValue(bean: pubPosinfoInstance, field: 'feePeriod')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoInstance, field: 'fullName', 'error')} ">
	<label for="fullName">
		<g:message code="pubPosinfo.fullName.label" default="Full Name" />
		
	</label>
	<g:textField name="fullName" value="${fieldValue(bean: pubPosinfoInstance, field: 'fullName')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="pubPosinfo.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${fieldValue(bean: pubPosinfoInstance, field: 'name')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoInstance, field: 'roomNum', 'error')} required">
	<label for="roomNum">
		<g:message code="pubPosinfo.roomNum.label" default="Room Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="roomNum" value="${fieldValue(bean: pubPosinfoInstance, field: 'roomNum')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoInstance, field: 'roomRate', 'error')} required">
	<label for="roomRate">
		<g:message code="pubPosinfo.roomRate.label" default="Room Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="roomRate" value="${fieldValue(bean: pubPosinfoInstance, field: 'roomRate')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="pubPosinfo.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="state.id" from="${com.hhpc.hcms.domain.PosinfoState.list()}" optionKey="id" value="${pubPosinfoInstance?.state?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="pubPosinfo.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type.id" from="${com.hhpc.hcms.domain.PosinfoType.list()}" optionKey="id" value="${pubPosinfoInstance?.type?.id}"  />

</div>

