
<%@ page import="com.hhpc.hcms.domain.PosinfoFeeCycle" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="posinfoFeeCycle.create" default="Create PosinfoFeeCycle" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="posinfoFeeCycle.list" default="PosinfoFeeCycle List" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="posinfoFeeCycle.create" default="Create PosinfoFeeCycle" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${posinfoFeeCycleInstance}">
            <div class="errors">
                <g:renderErrors bean="${posinfoFeeCycleInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="posinfoFeeCycle.name" default="Name" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoFeeCycleInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${fieldValue(bean: posinfoFeeCycleInstance, field: 'name')}" />

                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'create', 'default': 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
