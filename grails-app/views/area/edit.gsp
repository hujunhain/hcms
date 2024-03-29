
<%@ page import="com.hhpc.hcms.domain.Area" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="area.edit" default="Edit Area" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="area.list" default="Area List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="area.new" default="New Area" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="area.edit" default="Edit Area" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${areaInstance}">
            <div class="errors">
                <g:renderErrors bean="${areaInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${areaInstance?.id}" />
                <g:hiddenField name="version" value="${areaInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="preArea"><g:message code="area.preArea" default="Pre Area" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: areaInstance, field: 'preArea', 'errors')}">
                                    <g:select name="preArea.id" from="${com.hhpc.hcms.domain.Area.list()}" optionKey="id" value="${areaInstance?.preArea?.id}" noSelection="['null': '']" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="area.name" default="Name" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: areaInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${fieldValue(bean: areaInstance, field: 'name')}" />

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
