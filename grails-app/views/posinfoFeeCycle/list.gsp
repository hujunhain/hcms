
<%@ page import="com.hhpc.hcms.domain.PosinfoFeeCycle" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="posinfoFeeCycle.list" default="PosinfoFeeCycle List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="posinfoFeeCycle.new" default="New PosinfoFeeCycle" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="posinfoFeeCycle.list" default="PosinfoFeeCycle List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="posinfoFeeCycle.id" />
                        
                   	    <g:sortableColumn property="name" title="Name" titleKey="posinfoFeeCycle.name" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${posinfoFeeCycleInstanceList}" status="i" var="posinfoFeeCycleInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${posinfoFeeCycleInstance.id}">${fieldValue(bean: posinfoFeeCycleInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: posinfoFeeCycleInstance, field: "name")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${posinfoFeeCycleInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
