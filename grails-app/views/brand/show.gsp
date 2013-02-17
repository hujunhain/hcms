
<%@ page import="com.hhpc.hcms.domain.Brand" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="brand.show" default="Show Brand" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="brand.list" default="Brand List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="brand.new" default="New Brand" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="brand.show" default="Show Brand" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form>
                <g:hiddenField name="id" value="${brandInstance?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="brand.id" default="Id" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: brandInstance, field: "id")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="brand.breeds" default="Breeds" />:</td>
                                
                                <td  valign="top" style="text-align: left;" class="value">
                                    <ul>
                                    <g:each in="${brandInstance?.breeds}" var="breedInstance">
                                        <li><g:link controller="breed" action="show" id="${breedInstance.id}">${breedInstance.encodeAsHTML()}</g:link></li>
                                    </g:each>
                                    </ul>
                                </td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="brand.name" default="Name" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: brandInstance, field: "name")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="brand.ourFlag" default="Our Flag" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="ourFlag" action="show" id="${brandInstance?.ourFlag?.id}">${brandInstance?.ourFlag?.encodeAsHTML()}</g:link></td>
                                
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
