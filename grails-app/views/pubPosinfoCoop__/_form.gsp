<%@ page import="com.hhpc.hcms.domain.PubPosinfoCoop" %>



<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'contractType', 'error')} ">
	<label for="contractType">
		<g:message code="pubPosinfoCoop.contractType.label" default="Contract Type" />
		
	</label>
	<g:select name="contractType.id" from="${com.hhpc.hcms.domain.ContractType.list()}" optionKey="id" value="${pubPosinfoCoopInstance?.contractType?.id}" noSelection="['null': '']" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="pubPosinfoCoop.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'address')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="pubPosinfoCoop.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="area.id" from="${com.hhpc.hcms.domain.Area.list()}" optionKey="id" value="${pubPosinfoCoopInstance?.area?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'barNum', 'error')} required">
	<label for="barNum">
		<g:message code="pubPosinfoCoop.barNum.label" default="Bar Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="barNum" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'barNum')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'barRate', 'error')} required">
	<label for="barRate">
		<g:message code="pubPosinfoCoop.barRate.label" default="Bar Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="barRate" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'barRate')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'baseSales', 'error')} ">
	<label for="baseSales">
		<g:message code="pubPosinfoCoop.baseSales.label" default="Base Sales" />
		
	</label>
	
<ul>
<g:each in="${pubPosinfoCoopInstance?.baseSales}" var="posinfoBaseSaleInstance">
    <li><g:link controller="posinfoBaseSale" action="show" id="${posinfoBaseSaleInstance.id}">${posinfoBaseSaleInstance?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="posinfoBaseSale" params="['pubPosinfoCoop.id': pubPosinfoCoopInstance?.id]" action="create"><g:message code="posinfoBaseSale.new" default="New PosinfoBaseSale" /></g:link>


</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'beginDate', 'error')} required">
	<label for="beginDate">
		<g:message code="pubPosinfoCoop.beginDate.label" default="Begin Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="beginDate" value="${pubPosinfoCoopInstance?.beginDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'createDate', 'error')} required">
	<label for="createDate">
		<g:message code="pubPosinfoCoop.createDate.label" default="Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createDate" value="${pubPosinfoCoopInstance?.createDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'dealer', 'error')} required">
	<label for="dealer">
		<g:message code="pubPosinfoCoop.dealer.label" default="Dealer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="dealer.id" from="${com.hhpc.hcms.domain.Dealer.list()}" optionKey="id" value="${pubPosinfoCoopInstance?.dealer?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'declareDate', 'error')} required">
	<label for="declareDate">
		<g:message code="pubPosinfoCoop.declareDate.label" default="Declare Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="declareDate" value="${pubPosinfoCoopInstance?.declareDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="pubPosinfoCoop.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" value="${pubPosinfoCoopInstance?.endDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'engage', 'error')} required">
	<label for="engage">
		<g:message code="pubPosinfoCoop.engage.label" default="Engage" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="engage" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'engage')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'feeCycle', 'error')} required">
	<label for="feeCycle">
		<g:message code="pubPosinfoCoop.feeCycle.label" default="Fee Cycle" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="feeCycle.id" from="${com.hhpc.hcms.domain.PosinfoFeeCycle.list()}" optionKey="id" value="${pubPosinfoCoopInstance?.feeCycle?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'feePeriod', 'error')} ">
	<label for="feePeriod">
		<g:message code="pubPosinfoCoop.feePeriod.label" default="Fee Period" />
		
	</label>
	<g:textField name="feePeriod" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'feePeriod')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'fullName', 'error')} ">
	<label for="fullName">
		<g:message code="pubPosinfoCoop.fullName.label" default="Full Name" />
		
	</label>
	<g:textField name="fullName" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'fullName')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="pubPosinfoCoop.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'name')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'ourRisk', 'error')} required">
	<label for="ourRisk">
		<g:message code="pubPosinfoCoop.ourRisk.label" default="Our Risk" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ourRisk" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'ourRisk')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'plans', 'error')} ">
	<label for="plans">
		<g:message code="pubPosinfoCoop.plans.label" default="Plans" />
		
	</label>
	
<ul>
<g:each in="${pubPosinfoCoopInstance?.plans}" var="pubPosinfoPlanInstance">
    <li><g:link controller="pubPosinfoPlan" action="show" id="${pubPosinfoPlanInstance.id}">${pubPosinfoPlanInstance?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="pubPosinfoPlan" params="['pubPosinfoCoop.id': pubPosinfoCoopInstance?.id]" action="create"><g:message code="pubPosinfoPlan.new" default="New PubPosinfoPlan" /></g:link>


</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'roomNum', 'error')} required">
	<label for="roomNum">
		<g:message code="pubPosinfoCoop.roomNum.label" default="Room Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="roomNum" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'roomNum')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'roomRate', 'error')} required">
	<label for="roomRate">
		<g:message code="pubPosinfoCoop.roomRate.label" default="Room Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="roomRate" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'roomRate')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="pubPosinfoCoop.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="state.id" from="${com.hhpc.hcms.domain.PosinfoState.list()}" optionKey="id" value="${pubPosinfoCoopInstance?.state?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="pubPosinfoCoop.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type.id" from="${com.hhpc.hcms.domain.PosinfoType.list()}" optionKey="id" value="${pubPosinfoCoopInstance?.type?.id}"  />

</div>

