
<%@ page import="com.hhpc.hcms.domain.Breed" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="breed.show" default="Show Breed" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="breed.list" default="Breed List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="breed.new" default="New Breed" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="breed.show" default="Show Breed" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form>
                <g:hiddenField name="id" value="${breedInstance?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="breed.id" default="Id" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: breedInstance, field: "id")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="breed.brand" default="Brand" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="brand" action="show" id="${breedInstance?.brand?.id}">${breedInstance?.brand?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="breed.fullName" default="Full Name" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: breedInstance, field: "fullName")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="breed.name" default="Name" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: breedInstance, field: "name")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="breed.shortName" default="Short Name" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: breedInstance, field: "shortName")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="breed.typeName" default="Type Name" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="alcoholType" action="show" id="${breedInstance?.typeName?.id}">${breedInstance?.typeName?.encodeAsHTML()}</g:link></td>
                                
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
