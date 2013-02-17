
<%@ page import="com.hhpc.hcms.domain.PosinfoBaseSale" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="posinfoBaseSale.show" default="Show PosinfoBaseSale" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="posinfoBaseSale.list" default="PosinfoBaseSale List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="posinfoBaseSale.new" default="New PosinfoBaseSale" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="posinfoBaseSale.show" default="Show PosinfoBaseSale" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form>
                <g:hiddenField name="id" value="${posinfoBaseSaleInstance?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoBaseSale.id" default="Id" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: posinfoBaseSaleInstance, field: "id")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoBaseSale.alcoholType" default="Alcohol Type" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="alcoholType" action="show" id="${posinfoBaseSaleInstance?.alcoholType?.id}">${posinfoBaseSaleInstance?.alcoholType?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoBaseSale.compBrand" default="Comp Brand" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="brand" action="show" id="${posinfoBaseSaleInstance?.compBrand?.id}">${posinfoBaseSaleInstance?.compBrand?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoBaseSale.compCoopType" default="Comp Coop Type" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="cooperationType" action="show" id="${posinfoBaseSaleInstance?.compCoopType?.id}">${posinfoBaseSaleInstance?.compCoopType?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoBaseSale.monthSale" default="Month Sale" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: posinfoBaseSaleInstance, field: "monthSale")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoBaseSale.ourCoopType" default="Our Coop Type" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="cooperationType" action="show" id="${posinfoBaseSaleInstance?.ourCoopType?.id}">${posinfoBaseSaleInstance?.ourCoopType?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoBaseSale.posinfo" default="Posinfo" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="posinfo" action="show" id="${posinfoBaseSaleInstance?.posinfo?.id}">${posinfoBaseSaleInstance?.posinfo?.encodeAsHTML()}</g:link></td>
                                
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
