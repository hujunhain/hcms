
<%@ page import="com.hhpc.hcms.domain.BreedPrice" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="breedPrice.list" default="BreedPrice List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="breedPrice.new" default="New BreedPrice" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="breedPrice.list" default="BreedPrice List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="breedPrice.id" />
                        
                   	    <th><g:message code="breedPrice.area" default="Area" /></th>
                   	    
                   	    <th><g:message code="breedPrice.breed" default="Breed" /></th>
                   	    
                   	    <g:sortableColumn property="dealerPrice" title="Dealer Price" titleKey="breedPrice.dealerPrice" />
                        
                   	    <g:sortableColumn property="posInfoPrice" title="Pos Info Price" titleKey="breedPrice.posInfoPrice" />
                        
                   	    <g:sortableColumn property="dealerProfit" title="Dealer Profit" titleKey="breedPrice.dealerProfit" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${breedPriceInstanceList}" status="i" var="breedPriceInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${breedPriceInstance.id}">${fieldValue(bean: breedPriceInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: breedPriceInstance, field: "area")}</td>
                        
                            <td>${fieldValue(bean: breedPriceInstance, field: "breed")}</td>
                        
                            <td>${fieldValue(bean: breedPriceInstance, field: "dealerPrice")}</td>
                        
                            <td>${fieldValue(bean: breedPriceInstance, field: "posInfoPrice")}</td>
                        
                            <td>${fieldValue(bean: breedPriceInstance, field: "dealerProfit")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${breedPriceInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
