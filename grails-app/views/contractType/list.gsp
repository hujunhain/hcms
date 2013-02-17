
<%@ page import="com.hhpc.hcms.domain.ContractType" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="contractType.list" default="ContractType List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="contractType.new" default="New ContractType" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="contractType.list" default="ContractType List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="contractType.id" />
                        
                   	    <g:sortableColumn property="name" title="Name" titleKey="contractType.name" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${contractTypeInstanceList}" status="i" var="contractTypeInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${contractTypeInstance.id}">${fieldValue(bean: contractTypeInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: contractTypeInstance, field: "name")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${contractTypeInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
