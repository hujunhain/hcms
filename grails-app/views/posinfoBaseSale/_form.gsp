<%@ page import="com.hhpc.hcms.domain.PosinfoBaseSale" %>



<div class="fieldcontain ${hasErrors(bean: posinfoBaseSaleInstance, field: 'alcoholType', 'error')} required">
	<label for="alcoholType">
		<g:message code="posinfoBaseSale.alcoholType.label" default="Alcohol Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="alcoholType.id" from="${com.hhpc.hcms.domain.AlcoholType.list()}" optionKey="id" value="${posinfoBaseSaleInstance?.alcoholType?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoBaseSaleInstance, field: 'compBrand', 'error')} required">
	<label for="compBrand">
		<g:message code="posinfoBaseSale.compBrand.label" default="Comp Brand" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="compBrand.id" from="${com.hhpc.hcms.domain.Brand.list()}" optionKey="id" value="${posinfoBaseSaleInstance?.compBrand?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoBaseSaleInstance, field: 'compCoopType', 'error')} required">
	<label for="compCoopType">
		<g:message code="posinfoBaseSale.compCoopType.label" default="Comp Coop Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="compCoopType.id" from="${com.hhpc.hcms.domain.CooperationType.list()}" optionKey="id" value="${posinfoBaseSaleInstance?.compCoopType?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoBaseSaleInstance, field: 'monthSale', 'error')} required">
	<label for="monthSale">
		<g:message code="posinfoBaseSale.monthSale.label" default="Month Sale" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="monthSale" value="${fieldValue(bean: posinfoBaseSaleInstance, field: 'monthSale')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoBaseSaleInstance, field: 'ourCoopType', 'error')} required">
	<label for="ourCoopType">
		<g:message code="posinfoBaseSale.ourCoopType.label" default="Our Coop Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="ourCoopType.id" from="${com.hhpc.hcms.domain.CooperationType.list()}" optionKey="id" value="${posinfoBaseSaleInstance?.ourCoopType?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: posinfoBaseSaleInstance, field: 'posinfo', 'error')} required">
	<label for="posinfo">
		<g:message code="posinfoBaseSale.posinfo.label" default="Posinfo" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="posinfo.id" from="${com.hhpc.hcms.domain.Posinfo.list()}" optionKey="id" value="${posinfoBaseSaleInstance?.posinfo?.id}"  />

</div>

