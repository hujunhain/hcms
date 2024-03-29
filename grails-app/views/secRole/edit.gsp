
<%@ page import="com.hhpc.SecRole" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="secRole.edit" default="Edit SecRole" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="secRole.list" default="SecRole List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="secRole.new" default="New SecRole" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="secRole.edit" default="Edit SecRole" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${secRoleInstance}">
            <div class="errors">
                <g:renderErrors bean="${secRoleInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${secRoleInstance?.id}" />
                <g:hiddenField name="version" value="${secRoleInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="authority"><g:message code="secRole.authority" default="Authority" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: secRoleInstance, field: 'authority', 'errors')}">
                                    <g:textField name="authority" value="${fieldValue(bean: secRoleInstance, field: 'authority')}" />

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
