
<%@ page import="com.hhpc.hcms.domain.PubPosinfoCoop" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="pubPosinfoCoop.list" default="PubPosinfoCoop List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="pubPosinfoCoop.new" default="New PubPosinfoCoop" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="pubPosinfoCoop.list" default="PubPosinfoCoop List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="pubPosinfoCoop.id" />
                        
                   	    <th><g:message code="pubPosinfoCoop.contractType" default="Contract Type" /></th>
                   	    
                   	    <g:sortableColumn property="address" title="Address" titleKey="pubPosinfoCoop.address" />
                        
                   	    <th><g:message code="pubPosinfoCoop.area" default="Area" /></th>
                   	    
                   	    <g:sortableColumn property="barNum" title="Bar Num" titleKey="pubPosinfoCoop.barNum" />
                        
                   	    <g:sortableColumn property="barRate" title="Bar Rate" titleKey="pubPosinfoCoop.barRate" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${pubPosinfoCoopInstanceList}" status="i" var="pubPosinfoCoopInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${pubPosinfoCoopInstance.id}">${fieldValue(bean: pubPosinfoCoopInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: pubPosinfoCoopInstance, field: "contractType")}</td>
                        
                            <td>${fieldValue(bean: pubPosinfoCoopInstance, field: "address")}</td>
                        
                            <td>${fieldValue(bean: pubPosinfoCoopInstance, field: "area")}</td>
                        
                            <td>${fieldValue(bean: pubPosinfoCoopInstance, field: "barNum")}</td>
                        
                            <td>${fieldValue(bean: pubPosinfoCoopInstance, field: "barRate")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${pubPosinfoCoopInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
