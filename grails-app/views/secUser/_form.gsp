<%@ page import="com.hhpc.SecUser" %>



<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'username', 'error')} required">
	<label for="username">
		<g:message code="secUser.username.label" default="Username" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="username" value="${fieldValue(bean: secUserInstance, field: 'username')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="secUser.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="password" value="${fieldValue(bean: secUserInstance, field: 'password')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="secUser.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${secUserInstance?.accountExpired}" />

</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="secUser.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${secUserInstance?.accountLocked}" />

</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="secUser.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${secUserInstance?.enabled}" />

</div>

<div class="fieldcontain ${hasErrors(bean: secUserInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="secUser.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${secUserInstance?.passwordExpired}" />

</div>

