
<%@ page import="com.hhpc.hcms.domain.PosinfoType" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="posinfoType.list" default="PosinfoType List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="posinfoType.new" default="New PosinfoType" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="posinfoType.list" default="PosinfoType List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="posinfoType.id" />
                        
                   	    <g:sortableColumn property="name" title="Name" titleKey="posinfoType.name" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${posinfoTypeInstanceList}" status="i" var="posinfoTypeInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${posinfoTypeInstance.id}">${fieldValue(bean: posinfoTypeInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: posinfoTypeInstance, field: "name")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${posinfoTypeInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
