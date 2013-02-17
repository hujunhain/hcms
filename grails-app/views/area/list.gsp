
<%@ page import="com.hhpc.hcms.domain.Area" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="area.list" default="Area List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="area.new" default="New Area" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="area.list" default="Area List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="area.id" />
                        
                   	    <th><g:message code="area.preArea" default="Pre Area" /></th>
                   	    
                   	    <g:sortableColumn property="name" title="Name" titleKey="area.name" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${areaInstanceList}" status="i" var="areaInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${areaInstance.id}">${fieldValue(bean: areaInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: areaInstance, field: "preArea")}</td>
                        
                            <td>${fieldValue(bean: areaInstance, field: "name")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${areaInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
