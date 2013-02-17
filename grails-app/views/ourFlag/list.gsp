
<%@ page import="com.hhpc.hcms.domain.OurFlag" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="ourFlag.list" default="OurFlag List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="ourFlag.new" default="New OurFlag" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="ourFlag.list" default="OurFlag List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="ourFlag.id" />
                        
                   	    <g:sortableColumn property="name" title="Name" titleKey="ourFlag.name" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${ourFlagInstanceList}" status="i" var="ourFlagInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${ourFlagInstance.id}">${fieldValue(bean: ourFlagInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: ourFlagInstance, field: "name")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${ourFlagInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
