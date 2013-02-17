
<%@ page import="com.hhpc.hcms.domain.Dealer" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="dealer.list" default="Dealer List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="dealer.new" default="New Dealer" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="dealer.list" default="Dealer List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="dealer.id" />
                        
                   	    <th><g:message code="dealer.area" default="Area" /></th>
                   	    
                   	    <g:sortableColumn property="name" title="Name" titleKey="dealer.name" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${dealerInstanceList}" status="i" var="dealerInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${dealerInstance.id}">${fieldValue(bean: dealerInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: dealerInstance, field: "area")}</td>
                        
                            <td>${fieldValue(bean: dealerInstance, field: "name")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${dealerInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
