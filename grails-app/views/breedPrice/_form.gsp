<%@ page import="com.hhpc.hcms.domain.BreedPrice" %>



<div class="fieldcontain ${hasErrors(bean: breedPriceInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="breedPrice.area.label" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="area.id" from="${com.hhpc.hcms.domain.Area.list()}" optionKey="id" value="${breedPriceInstance?.area?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: breedPriceInstance, field: 'breed', 'error')} required">
	<label for="breed">
		<g:message code="breedPrice.breed.label" default="Breed" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="breed.id" from="${com.hhpc.hcms.domain.Breed.list()}" optionKey="id" value="${breedPriceInstance?.breed?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: breedPriceInstance, field: 'dealerPrice', 'error')} required">
	<label for="dealerPrice">
		<g:message code="breedPrice.dealerPrice.label" default="Dealer Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dealerPrice" value="${fieldValue(bean: breedPriceInstance, field: 'dealerPrice')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: breedPriceInstance, field: 'posInfoPrice', 'error')} required">
	<label for="posInfoPrice">
		<g:message code="breedPrice.posInfoPrice.label" default="Pos Info Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="posInfoPrice" value="${fieldValue(bean: breedPriceInstance, field: 'posInfoPrice')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: breedPriceInstance, field: 'dealerProfit', 'error')} required">
	<label for="dealerProfit">
		<g:message code="breedPrice.dealerProfit.label" default="Dealer Profit" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="dealerProfit" value="${fieldValue(bean: breedPriceInstance, field: 'dealerProfit')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: breedPriceInstance, field: 'infee', 'error')} required">
	<label for="infee">
		<g:message code="breedPrice.infee.label" default="Infee" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="infee" value="${fieldValue(bean: breedPriceInstance, field: 'infee')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: breedPriceInstance, field: 'recover', 'error')} required">
	<label for="recover">
		<g:message code="breedPrice.recover.label" default="Recover" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="recover" value="${fieldValue(bean: breedPriceInstance, field: 'recover')}" />

</div>

