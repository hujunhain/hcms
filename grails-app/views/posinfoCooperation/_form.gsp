<%@ page import="com.hhpc.hcms.domain.PosinfoCooperation" %>



<div class="fieldcontain ${hasErrors(bean: posinfoCooperationInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="posinfoCooperation.address.label" default="Address" />
		
	</label>
	<g:textField name="address" value="${fieldValue(bean: posinfoCooperationInstance, field: 'address')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoCooperationInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="posinfoCooperation.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="area.id" from="${com.hhpc.hcms.domain.Area.list()}" optionKey="id" value="${posinfoCooperationInstance?.area?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoCooperationInstance, field: 'baseSales', 'error')} ">
	<label for="baseSales">
		<g:message code="posinfoCooperation.baseSales.label" default="Base Sales" />
		
	</label>
	
<ul>
<g:each in="${posinfoCooperationInstance?.baseSales}" var="posinfoBaseSaleInstance">
    <li><g:link controller="posinfoBaseSale" action="show" id="${posinfoBaseSaleInstance.id}">${posinfoBaseSaleInstance?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="posinfoBaseSale" params="['posinfoCooperation.id': posinfoCooperationInstance?.id]" action="create"><g:message code="posinfoBaseSale.new" default="New PosinfoBaseSale" /></g:link>


</div>

<div class="fieldcontain ${hasErrors(bean: posinfoCooperationInstance, field: 'beginDate', 'error')} required">
	<label for="beginDate">
		<g:message code="posinfoCooperation.beginDate.label" default="Begin Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="beginDate" value="${posinfoCooperationInstance?.beginDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoCooperationInstance, field: 'contractType', 'error')} required">
	<label for="contractType">
		<g:message code="posinfoCooperation.contractType.label" default="Contract Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="contractType.id" from="${com.hhpc.hcms.domain.ContractType.list()}" optionKey="id" value="${posinfoCooperationInstance?.contractType?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoCooperationInstance, field: 'createDate', 'error')} required">
	<label for="createDate">
		<g:message code="posinfoCooperation.createDate.label" default="Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createDate" value="${posinfoCooperationInstance?.createDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoCooperationInstance, field: 'createTime', 'error')} required">
	<label for="createTime">
		<g:message code="posinfoCooperation.createTime.label" default="Create Time" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createTime" value="${posinfoCooperationInstance?.createTime}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoCooperationInstance, field: 'dealer', 'error')} required">
	<label for="dealer">
		<g:message code="posinfoCooperation.dealer.label" default="Dealer" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="dealer.id" from="${com.hhpc.hcms.domain.Dealer.list()}" optionKey="id" value="${posinfoCooperationInstance?.dealer?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoCooperationInstance, field: 'declareDate', 'error')} required">
	<label for="declareDate">
		<g:message code="posinfoCooperation.declareDate.label" default="Declare Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="declareDate" value="${posinfoCooperationInstance?.declareDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoCooperationInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="posinfoCooperation.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" value="${posinfoCooperationInstance?.endDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoCooperationInstance, field: 'engage', 'error')} required">
	<label for="engage">
		<g:message code="posinfoCooperation.engage.label" default="Engage" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="engage" value="${fieldValue(bean: posinfoCooperationInstance, field: 'engage')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoCooperationInstance, field: 'feeCycle', 'error')} required">
	<label for="feeCycle">
		<g:message code="posinfoCooperation.feeCycle.label" default="Fee Cycle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="feeCycle" value="${fieldValue(bean: posinfoCooperationInstance, field: 'feeCycle')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoCooperationInstance, field: 'feePeriod', 'error')} ">
	<label for="feePeriod">
		<g:message code="posinfoCooperation.feePeriod.label" default="Fee Period" />
		
	</label>
	<g:textField name="feePeriod" value="${fieldValue(bean: posinfoCooperationInstance, field: 'feePeriod')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoCooperationInstance, field: 'fullName', 'error')} ">
	<label for="fullName">
		<g:message code="posinfoCooperation.fullName.label" default="Full Name" />
		
	</label>
	<g:textField name="fullName" value="${fieldValue(bean: posinfoCooperationInstance, field: 'fullName')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoCooperationInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="posinfoCooperation.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${fieldValue(bean: posinfoCooperationInstance, field: 'name')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoCooperationInstance, field: 'ourRisk', 'error')} required">
	<label for="ourRisk">
		<g:message code="posinfoCooperation.ourRisk.label" default="Our Risk" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ourRisk" value="${fieldValue(bean: posinfoCooperationInstance, field: 'ourRisk')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoCooperationInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="posinfoCooperation.state.label" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="state.id" from="${com.hhpc.hcms.domain.PosinfoState.list()}" optionKey="id" value="${posinfoCooperationInstance?.state?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoCooperationInstance, field: 'type', 'error')} required">
	<label for="type">
		<g:message code="posinfoCooperation.type.label" default="Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="type.id" from="${com.hhpc.hcms.domain.PosinfoType.list()}" optionKey="id" value="${posinfoCooperationInstance?.type?.id}"  />

</div>

