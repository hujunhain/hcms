
<%@ page import="com.hhpc.hcms.domain.Area" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="area.show" default="Show Area" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="area.list" default="Area List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="area.new" default="New Area" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="area.show" default="Show Area" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form>
                <g:hiddenField name="id" value="${areaInstance?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="area.id" default="Id" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: areaInstance, field: "id")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="area.preArea" default="Pre Area" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="area" action="show" id="${areaInstance?.preArea?.id}">${areaInstance?.preArea?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="area.name" default="Name" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: areaInstance, field: "name")}</td>
                                
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
