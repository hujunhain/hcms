
<%@ page import="com.hhpc.hcms.domain.Dealer" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="dealer.show" default="Show Dealer" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="dealer.list" default="Dealer List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="dealer.new" default="New Dealer" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="dealer.show" default="Show Dealer" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form>
                <g:hiddenField name="id" value="${dealerInstance?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="dealer.id" default="Id" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: dealerInstance, field: "id")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="dealer.area" default="Area" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="area" action="show" id="${dealerInstance?.area?.id}">${dealerInstance?.area?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="dealer.name" default="Name" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: dealerInstance, field: "name")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="dealer.posinfos" default="Posinfos" />:</td>
                                
                                <td  valign="top" style="text-align: left;" class="value">
                                    <ul>
                                    <g:each in="${dealerInstance?.posinfos}" var="posinfoCooperationInstance">
                                        <li><g:link controller="posinfoCooperation" action="show" id="${posinfoCooperationInstance.id}">${posinfoCooperationInstance.encodeAsHTML()}</g:link></li>
                                    </g:each>
                                    </ul>
                                </td>
                                
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
