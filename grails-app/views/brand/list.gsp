
<%@ page import="com.hhpc.hcms.domain.Brand" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="brand.list" default="Brand List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="brand.new" default="New Brand" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="brand.list" default="Brand List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="brand.id" />
                        
                   	    <g:sortableColumn property="name" title="Name" titleKey="brand.name" />
                        
                   	    <th><g:message code="brand.ourFlag" default="Our Flag" /></th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${brandInstanceList}" status="i" var="brandInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${brandInstance.id}">${fieldValue(bean: brandInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: brandInstance, field: "name")}</td>
                        
                            <td>${fieldValue(bean: brandInstance, field: "ourFlag")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${brandInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
