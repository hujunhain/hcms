
<%@ page import="com.hhpc.hcms.domain.AlcoholType" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="alcoholType.list" default="AlcoholType List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="alcoholType.new" default="New AlcoholType" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="alcoholType.list" default="AlcoholType List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="alcoholType.id" />
                        
                   	    <g:sortableColumn property="name" title="Name" titleKey="alcoholType.name" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${alcoholTypeInstanceList}" status="i" var="alcoholTypeInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${alcoholTypeInstance.id}">${fieldValue(bean: alcoholTypeInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: alcoholTypeInstance, field: "name")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${alcoholTypeInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
