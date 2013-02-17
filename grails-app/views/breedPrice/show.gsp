
<%@ page import="com.hhpc.hcms.domain.BreedPrice" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="breedPrice.show" default="Show BreedPrice" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="breedPrice.list" default="BreedPrice List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="breedPrice.new" default="New BreedPrice" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="breedPrice.show" default="Show BreedPrice" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form>
                <g:hiddenField name="id" value="${breedPriceInstance?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="breedPrice.id" default="Id" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: breedPriceInstance, field: "id")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="breedPrice.area" default="Area" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="area" action="show" id="${breedPriceInstance?.area?.id}">${breedPriceInstance?.area?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="breedPrice.breed" default="Breed" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="breed" action="show" id="${breedPriceInstance?.breed?.id}">${breedPriceInstance?.breed?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="breedPrice.dealerPrice" default="Dealer Price" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: breedPriceInstance, field: "dealerPrice")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="breedPrice.posInfoPrice" default="Pos Info Price" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: breedPriceInstance, field: "posInfoPrice")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="breedPrice.dealerProfit" default="Dealer Profit" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: breedPriceInstance, field: "dealerProfit")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="breedPrice.infee" default="Infee" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: breedPriceInstance, field: "infee")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="breedPrice.recover" default="Recover" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: breedPriceInstance, field: "recover")}</td>
                                
                            </tr>
                            
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="edit" action="edit" value="${message(code: 'edit', 'default': 'Edit')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', 'default': 'Delete')}" onclick="return confirm('${message(code: 'delete.confirm', 'default': 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
