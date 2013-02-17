
<%@ page import="com.hhpc.hcms.domain.PubPosinfo" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="pubPosinfo.list" default="PubPosinfo List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="pubPosinfo.new" default="New PubPosinfo" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="pubPosinfo.list" default="PubPosinfo List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="pubPosinfo.id" />
                        
                   	    <g:sortableColumn property="address" title="Address" titleKey="pubPosinfo.address" />
                        
                   	    <th><g:message code="pubPosinfo.area" default="Area" /></th>
                   	    
                   	    <g:sortableColumn property="barNum" title="Bar Num" titleKey="pubPosinfo.barNum" />
                        
                   	    <g:sortableColumn property="barRate" title="Bar Rate" titleKey="pubPosinfo.barRate" />
                        
                   	    <g:sortableColumn property="createDate" title="Create Date" titleKey="pubPosinfo.createDate" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${pubPosinfoInstanceList}" status="i" var="pubPosinfoInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${pubPosinfoInstance.id}">${fieldValue(bean: pubPosinfoInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: pubPosinfoInstance, field: "address")}</td>
                        
                            <td>${fieldValue(bean: pubPosinfoInstance, field: "area")}</td>
                        
                            <td>${fieldValue(bean: pubPosinfoInstance, field: "barNum")}</td>
                        
                            <td>${fieldValue(bean: pubPosinfoInstance, field: "barRate")}</td>
                        
                            <td><g:formatDate date="${pubPosinfoInstance.createDate}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${pubPosinfoInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
