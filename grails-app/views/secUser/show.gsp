
<%@ page import="com.hhpc.SecUser" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="secUser.show" default="Show SecUser" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="secUser.list" default="SecUser List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="secUser.new" default="New SecUser" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="secUser.show" default="Show SecUser" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form>
                <g:hiddenField name="id" value="${secUserInstance?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="secUser.id" default="Id" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: secUserInstance, field: "id")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="secUser.username" default="Username" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: secUserInstance, field: "username")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="secUser.password" default="Password" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: secUserInstance, field: "password")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="secUser.accountExpired" default="Account Expired" />:</td>
                                
                                <td valign="top" class="value"><g:formatBoolean boolean="${secUserInstance?.accountExpired}" /></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="secUser.accountLocked" default="Account Locked" />:</td>
                                
                                <td valign="top" class="value"><g:formatBoolean boolean="${secUserInstance?.accountLocked}" /></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="secUser.enabled" default="Enabled" />:</td>
                                
                                <td valign="top" class="value"><g:formatBoolean boolean="${secUserInstance?.enabled}" /></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="secUser.passwordExpired" default="Password Expired" />:</td>
                                
                                <td valign="top" class="value"><g:formatBoolean boolean="${secUserInstance?.passwordExpired}" /></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="secUser.authorities" default="Authorities" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: secUserInstance, field: "authorities")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="secUser.springSecurityService" default="Spring Security Service" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: secUserInstance, field: "springSecurityService")}</td>
                                
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'edit', 'default': 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', 'default': 'Delete')}" onclick="return confirm('${message(code: 'delete.confirm', 'default': 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
