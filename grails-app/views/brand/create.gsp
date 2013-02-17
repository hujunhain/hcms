
<%@ page import="com.hhpc.hcms.domain.Brand" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="brand.create" default="Create Brand" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="brand.list" default="Brand List" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="brand.create" default="Create Brand" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${brandInstance}">
            <div class="errors">
                <g:renderErrors bean="${brandInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="brand.name" default="Name" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: brandInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${fieldValue(bean: brandInstance, field: 'name')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ourFlag"><g:message code="brand.ourFlag" default="Our Flag" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: brandInstance, field: 'ourFlag', 'errors')}">
                                    <g:select name="ourFlag.id" from="${com.hhpc.hcms.domain.OurFlag.list()}" optionKey="id" value="${brandInstance?.ourFlag?.id}"  />

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
