
<%@ page import="com.hhpc.hcms.domain.Dealer" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="dealer.edit" default="Edit Dealer" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="dealer.list" default="Dealer List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="dealer.new" default="New Dealer" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="dealer.edit" default="Edit Dealer" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${dealerInstance}">
            <div class="errors">
                <g:renderErrors bean="${dealerInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${dealerInstance?.id}" />
                <g:hiddenField name="version" value="${dealerInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="area"><g:message code="dealer.area" default="Area" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: dealerInstance, field: 'area', 'errors')}">
                                    <g:select name="area.id" from="${com.hhpc.hcms.domain.Area.list()}" optionKey="id" value="${dealerInstance?.area?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="dealer.name" default="Name" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: dealerInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${fieldValue(bean: dealerInstance, field: 'name')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="posinfos"><g:message code="dealer.posinfos" default="Posinfos" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: dealerInstance, field: 'posinfos', 'errors')}">
                                    
<ul>
<g:each in="${dealerInstance?.posinfos}" var="posinfoCooperationInstance">
    <li><g:link controller="posinfoCooperation" action="show" id="${posinfoCooperationInstance.id}">${posinfoCooperationInstance?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="posinfoCooperation" params="['dealer.id': dealerInstance?.id]" action="create"><g:message code="posinfoCooperation.new" default="New PosinfoCooperation" /></g:link>


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
