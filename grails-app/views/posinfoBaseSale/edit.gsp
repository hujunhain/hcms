
<%@ page import="com.hhpc.hcms.domain.PosinfoBaseSale" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="posinfoBaseSale.edit" default="Edit PosinfoBaseSale" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="posinfoBaseSale.list" default="PosinfoBaseSale List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="posinfoBaseSale.new" default="New PosinfoBaseSale" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="posinfoBaseSale.edit" default="Edit PosinfoBaseSale" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${posinfoBaseSaleInstance}">
            <div class="errors">
                <g:renderErrors bean="${posinfoBaseSaleInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${posinfoBaseSaleInstance?.id}" />
                <g:hiddenField name="version" value="${posinfoBaseSaleInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="alcoholType"><g:message code="posinfoBaseSale.alcoholType" default="Alcohol Type" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoBaseSaleInstance, field: 'alcoholType', 'errors')}">
                                    <g:select name="alcoholType.id" from="${com.hhpc.hcms.domain.AlcoholType.list()}" optionKey="id" value="${posinfoBaseSaleInstance?.alcoholType?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="compBrand"><g:message code="posinfoBaseSale.compBrand" default="Comp Brand" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoBaseSaleInstance, field: 'compBrand', 'errors')}">
                                    <g:select name="compBrand.id" from="${com.hhpc.hcms.domain.Brand.list()}" optionKey="id" value="${posinfoBaseSaleInstance?.compBrand?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="compCoopType"><g:message code="posinfoBaseSale.compCoopType" default="Comp Coop Type" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoBaseSaleInstance, field: 'compCoopType', 'errors')}">
                                    <g:select name="compCoopType.id" from="${com.hhpc.hcms.domain.CooperationType.list()}" optionKey="id" value="${posinfoBaseSaleInstance?.compCoopType?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="monthSale"><g:message code="posinfoBaseSale.monthSale" default="Month Sale" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoBaseSaleInstance, field: 'monthSale', 'errors')}">
                                    <g:textField name="monthSale" value="${fieldValue(bean: posinfoBaseSaleInstance, field: 'monthSale')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ourCoopType"><g:message code="posinfoBaseSale.ourCoopType" default="Our Coop Type" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoBaseSaleInstance, field: 'ourCoopType', 'errors')}">
                                    <g:select name="ourCoopType.id" from="${com.hhpc.hcms.domain.CooperationType.list()}" optionKey="id" value="${posinfoBaseSaleInstance?.ourCoopType?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="posinfo"><g:message code="posinfoBaseSale.posinfo" default="Posinfo" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoBaseSaleInstance, field: 'posinfo', 'errors')}">
                                    <g:select name="posinfo.id" from="${com.hhpc.hcms.domain.Posinfo.list()}" optionKey="id" value="${posinfoBaseSaleInstance?.posinfo?.id}"  />

                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:actionSubmit class="save" action="update" value="${message(code: 'update', 'default': 'Update')}" /></span>
                    <span class="button"><g:actionSubmit class="delete" action="delete" value="${message(code: 'delete', 'default': 'Delete')}" onclick="return confirm('${message(code: 'delete.confirm', 'default': 'Are you sure?')}');" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
