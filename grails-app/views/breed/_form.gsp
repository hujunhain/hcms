<%@ page import="com.hhpc.hcms.domain.Breed" %>



<div class="fieldcontain ${hasErrors(bean: breedInstance, field: 'brand', 'error')} required">
	<label for="brand">
		<g:message code="breed.brand.label" default="Brand" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="brand.id" from="${com.hhpc.hcms.domain.Brand.list()}" optionKey="id" value="${breedInstance?.brand?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: breedInstance, field: 'fullName', 'error')} ">
	<label for="fullName">
		<g:message code="breed.fullName.label" default="Full Name" />
		
	</label>
	<g:textField name="fullName" value="${fieldValue(bean: breedInstance, field: 'fullName')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: breedInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="breed.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${fieldValue(bean: breedInstance, field: 'name')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: breedInstance, field: 'shortName', 'error')} ">
	<label for="shortName">
		<g:message code="breed.shortName.label" default="Short Name" />
		
	</label>
	<g:textField name="shortName" value="${fieldValue(bean: breedInstance, field: 'shortName')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: breedInstance, field: 'typeName', 'error')} required">
	<label for="typeName">
		<g:message code="breed.typeName.label" default="Type Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="typeName.id" from="${com.hhpc.hcms.domain.AlcoholType.list()}" optionKey="id" value="${breedInstance?.typeName?.id}"  />

</div>

