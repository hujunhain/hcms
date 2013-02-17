
<%@ page import="com.hhpc.SecUser" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="secUser.edit" default="Edit SecUser" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="secUser.list" default="SecUser List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="secUser.new" default="New SecUser" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="secUser.edit" default="Edit SecUser" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${secUserInstance}">
            <div class="errors">
                <g:renderErrors bean="${secUserInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${secUserInstance?.id}" />
                <g:hiddenField name="version" value="${secUserInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="username"><g:message code="secUser.username" default="Username" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: secUserInstance, field: 'username', 'errors')}">
                                    <g:textField name="username" value="${fieldValue(bean: secUserInstance, field: 'username')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="password"><g:message code="secUser.password" default="Password" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: secUserInstance, field: 'password', 'errors')}">
                                    <g:textField name="password" value="${fieldValue(bean: secUserInstance, field: 'password')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="accountExpired"><g:message code="secUser.accountExpired" default="Account Expired" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: secUserInstance, field: 'accountExpired', 'errors')}">
                                    <g:checkBox name="accountExpired" value="${secUserInstance?.accountExpired}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="accountLocked"><g:message code="secUser.accountLocked" default="Account Locked" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: secUserInstance, field: 'accountLocked', 'errors')}">
                                    <g:checkBox name="accountLocked" value="${secUserInstance?.accountLocked}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="enabled"><g:message code="secUser.enabled" default="Enabled" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: secUserInstance, field: 'enabled', 'errors')}">
                                    <g:checkBox name="enabled" value="${secUserInstance?.enabled}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="passwordExpired"><g:message code="secUser.passwordExpired" default="Password Expired" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: secUserInstance, field: 'passwordExpired', 'errors')}">
                                    <g:checkBox name="passwordExpired" value="${secUserInstance?.passwordExpired}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="authorities"><g:message code="secUser.authorities" default="Authorities" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: secUserInstance, field: 'authorities', 'errors')}">
                                    

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="springSecurityService"><g:message code="secUser.springSecurityService" default="Spring Security Service" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: secUserInstance, field: 'springSecurityService', 'errors')}">
                                    

                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'update', 'default': 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', 'default': 'Delete')}" onclick="return confirm('${message(code: 'delete.confirm', 'default': 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
