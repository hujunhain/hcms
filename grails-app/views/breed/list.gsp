
<%@ page import="com.hhpc.hcms.domain.Breed" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="breed.list" default="Breed List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="breed.new" default="New Breed" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="breed.list" default="Breed List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="breed.id" />
                        
                   	    <th><g:message code="breed.brand" default="Brand" /></th>
                   	    
                   	    <g:sortableColumn property="fullName" title="Full Name" titleKey="breed.fullName" />
                        
                   	    <g:sortableColumn property="name" title="Name" titleKey="breed.name" />
                        
                   	    <g:sortableColumn property="shortName" title="Short Name" titleKey="breed.shortName" />
                        
                   	    <th><g:message code="breed.typeName" default="Type Name" /></th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${breedInstanceList}" status="i" var="breedInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${breedInstance.id}">${fieldValue(bean: breedInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: breedInstance, field: "brand")}</td>
                        
                            <td>${fieldValue(bean: breedInstance, field: "fullName")}</td>
                        
                            <td>${fieldValue(bean: breedInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: breedInstance, field: "shortName")}</td>
                        
                            <td>${fieldValue(bean: breedInstance, field: "typeName")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${breedInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
