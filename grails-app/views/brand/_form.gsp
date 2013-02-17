<%@ page import="com.hhpc.hcms.domain.Brand" %>



<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'breeds', 'error')} ">
	<label for="breeds">
		<g:message code="brand.breeds.label" default="Breeds" />
		
	</label>
	
<ul>
<g:each in="${brandInstance?.breeds}" var="breedInstance">
    <li><g:link controller="breed" action="show" id="${breedInstance.id}">${breedInstance?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="breed" params="['brand.id': brandInstance?.id]" action="create"><g:message code="breed.new" default="New Breed" /></g:link>


</div>

<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="brand.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${fieldValue(bean: brandInstance, field: 'name')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: brandInstance, field: 'ourFlag', 'error')} required">
	<label for="ourFlag">
		<g:message code="brand.ourFlag.label" default="Our Flag" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="ourFlag.id" from="${com.hhpc.hcms.domain.OurFlag.list()}" optionKey="id" value="${brandInstance?.ourFlag?.id}"  />

</div>

