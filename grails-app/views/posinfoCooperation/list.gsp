
<%@ page import="com.hhpc.hcms.domain.PosinfoCooperation" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="posinfoCooperation.list" default="PosinfoCooperation List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="posinfoCooperation.new" default="New PosinfoCooperation" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="posinfoCooperation.list" default="PosinfoCooperation List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="posinfoCooperation.id" />
                        
                   	    <g:sortableColumn property="address" title="Address" titleKey="posinfoCooperation.address" />
                        
                   	    <th><g:message code="posinfoCooperation.area" default="Area" /></th>
                   	    
                   	    <g:sortableColumn property="beginDate" title="Begin Date" titleKey="posinfoCooperation.beginDate" />
                        
                   	    <th><g:message code="posinfoCooperation.contractType" default="Contract Type" /></th>
                   	    
                   	    <g:sortableColumn property="createDate" title="Create Date" titleKey="posinfoCooperation.createDate" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${posinfoCooperationInstanceList}" status="i" var="posinfoCooperationInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${posinfoCooperationInstance.id}">${fieldValue(bean: posinfoCooperationInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: posinfoCooperationInstance, field: "address")}</td>
                        
                            <td>${fieldValue(bean: posinfoCooperationInstance, field: "area")}</td>
                        
                            <td><g:formatDate date="${posinfoCooperationInstance.beginDate}" /></td>
                        
                            <td>${fieldValue(bean: posinfoCooperationInstance, field: "contractType")}</td>
                        
                            <td><g:formatDate date="${posinfoCooperationInstance.createDate}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${posinfoCooperationInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
