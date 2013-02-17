
<%@ page import="com.hhpc.hcms.domain.User" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="user.show" default="Show User" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="user.list" default="User List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="user.new" default="New User" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="user.show" default="Show User" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form>
                <g:hiddenField name="id" value="${userInstance?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="user.id" default="Id" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: userInstance, field: "id")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="user.username" default="Username" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: userInstance, field: "username")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="user.password" default="Password" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: userInstance, field: "password")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="user.accountExpired" default="Account Expired" />:</td>
                                
                                <td valign="top" class="value"><g:formatBoolean boolean="${userInstance?.accountExpired}" /></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="user.accountLocked" default="Account Locked" />:</td>
                                
                                <td valign="top" class="value"><g:formatBoolean boolean="${userInstance?.accountLocked}" /></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="user.area" default="Area" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="area" action="show" id="${userInstance?.area?.id}">${userInstance?.area?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="user.enabled" default="Enabled" />:</td>
                                
                                <td valign="top" class="value"><g:formatBoolean boolean="${userInstance?.enabled}" /></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="user.mobleNo" default="Moble No" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: userInstance, field: "mobleNo")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="user.name" default="Name" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: userInstance, field: "name")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="user.passwordExpired" default="Password Expired" />:</td>
                                
                                <td valign="top" class="value"><g:formatBoolean boolean="${userInstance?.passwordExpired}" /></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="user.authorities" default="Authorities" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: userInstance, field: "authorities")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="user.springSecurityService" default="Spring Security Service" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: userInstance, field: "springSecurityService")}</td>
                                
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
