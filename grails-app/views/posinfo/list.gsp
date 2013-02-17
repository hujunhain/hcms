
<%@ page import="com.hhpc.hcms.domain.Posinfo" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="posinfo.list" default="Posinfo List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="posinfo.new" default="New Posinfo" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="posinfo.list" default="Posinfo List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="posinfo.id" />
                        
                   	    <g:sortableColumn property="address" title="Address" titleKey="posinfo.address" />
                        
                   	    <th><g:message code="posinfo.area" default="Area" /></th>
                   	    
                   	    <g:sortableColumn property="createDate" title="Create Date" titleKey="posinfo.createDate" />
                        
                   	    <g:sortableColumn property="engage" title="Engage" titleKey="posinfo.engage" />
                        
                   	    <g:sortableColumn property="feePeriod" title="Fee Period" titleKey="posinfo.feePeriod" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${posinfoInstanceList}" status="i" var="posinfoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${posinfoInstance.id}">${fieldValue(bean: posinfoInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: posinfoInstance, field: "address")}</td>
                        
                            <td>${fieldValue(bean: posinfoInstance, field: "area")}</td>
                        
                            <td><g:formatDate date="${posinfoInstance.createDate}" /></td>
                        
                            <td>${fieldValue(bean: posinfoInstance, field: "engage")}</td>
                        
                            <td>${fieldValue(bean: posinfoInstance, field: "feePeriod")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${posinfoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
