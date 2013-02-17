
<%@ page import="com.hhpc.hcms.domain.Breed" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="breed.edit" default="Edit Breed" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="breed.list" default="Breed List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="breed.new" default="New Breed" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="breed.edit" default="Edit Breed" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${breedInstance}">
            <div class="errors">
                <g:renderErrors bean="${breedInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${breedInstance?.id}" />
                <g:hiddenField name="version" value="${breedInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="brand"><g:message code="breed.brand" default="Brand" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: breedInstance, field: 'brand', 'errors')}">
                                    <g:select name="brand.id" from="${com.hhpc.hcms.domain.Brand.list()}" optionKey="id" value="${breedInstance?.brand?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fullName"><g:message code="breed.fullName" default="Full Name" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: breedInstance, field: 'fullName', 'errors')}">
                                    <g:textField name="fullName" value="${fieldValue(bean: breedInstance, field: 'fullName')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="breed.name" default="Name" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: breedInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${fieldValue(bean: breedInstance, field: 'name')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="shortName"><g:message code="breed.shortName" default="Short Name" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: breedInstance, field: 'shortName', 'errors')}">
                                    <g:textField name="shortName" value="${fieldValue(bean: breedInstance, field: 'shortName')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="typeName"><g:message code="breed.typeName" default="Type Name" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: breedInstance, field: 'typeName', 'errors')}">
                                    <g:select name="typeName.id" from="${com.hhpc.hcms.domain.AlcoholType.list()}" optionKey="id" value="${breedInstance?.typeName?.id}"  />

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
