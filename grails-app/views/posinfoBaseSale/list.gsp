
<%@ page import="com.hhpc.hcms.domain.PosinfoBaseSale" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="posinfoBaseSale.list" default="PosinfoBaseSale List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="posinfoBaseSale.new" default="New PosinfoBaseSale" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="posinfoBaseSale.list" default="PosinfoBaseSale List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="posinfoBaseSale.id" />
                        
                   	    <th><g:message code="posinfoBaseSale.alcoholType" default="Alcohol Type" /></th>
                   	    
                   	    <th><g:message code="posinfoBaseSale.compBrand" default="Comp Brand" /></th>
                   	    
                   	    <th><g:message code="posinfoBaseSale.compCoopType" default="Comp Coop Type" /></th>
                   	    
                   	    <g:sortableColumn property="monthSale" title="Month Sale" titleKey="posinfoBaseSale.monthSale" />
                        
                   	    <th><g:message code="posinfoBaseSale.ourCoopType" default="Our Coop Type" /></th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${posinfoBaseSaleInstanceList}" status="i" var="posinfoBaseSaleInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${posinfoBaseSaleInstance.id}">${fieldValue(bean: posinfoBaseSaleInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: posinfoBaseSaleInstance, field: "alcoholType")}</td>
                        
                            <td>${fieldValue(bean: posinfoBaseSaleInstance, field: "compBrand")}</td>
                        
                            <td>${fieldValue(bean: posinfoBaseSaleInstance, field: "compCoopType")}</td>
                        
                            <td>${fieldValue(bean: posinfoBaseSaleInstance, field: "monthSale")}</td>
                        
                            <td>${fieldValue(bean: posinfoBaseSaleInstance, field: "ourCoopType")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${posinfoBaseSaleInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
