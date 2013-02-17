
<%@ page import="com.hhpc.hcms.domain.BreedPrice" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="breedPrice.edit" default="Edit BreedPrice" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="breedPrice.list" default="BreedPrice List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="breedPrice.new" default="New BreedPrice" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="breedPrice.edit" default="Edit BreedPrice" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${breedPriceInstance}">
            <div class="errors">
                <g:renderErrors bean="${breedPriceInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${breedPriceInstance?.id}" />
                <g:hiddenField name="version" value="${breedPriceInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="area"><g:message code="breedPrice.area" default="Area" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: breedPriceInstance, field: 'area', 'errors')}">
                                    <g:select name="area.id" from="${com.hhpc.hcms.domain.Area.list()}" optionKey="id" value="${breedPriceInstance?.area?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="breed"><g:message code="breedPrice.breed" default="Breed" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: breedPriceInstance, field: 'breed', 'errors')}">
                                    <g:select name="breed.id" from="${com.hhpc.hcms.domain.Breed.list()}" optionKey="id" value="${breedPriceInstance?.breed?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dealerPrice"><g:message code="breedPrice.dealerPrice" default="Dealer Price" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: breedPriceInstance, field: 'dealerPrice', 'errors')}">
                                    <g:textField name="dealerPrice" value="${fieldValue(bean: breedPriceInstance, field: 'dealerPrice')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="posInfoPrice"><g:message code="breedPrice.posInfoPrice" default="Pos Info Price" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: breedPriceInstance, field: 'posInfoPrice', 'errors')}">
                                    <g:textField name="posInfoPrice" value="${fieldValue(bean: breedPriceInstance, field: 'posInfoPrice')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dealerProfit"><g:message code="breedPrice.dealerProfit" default="Dealer Profit" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: breedPriceInstance, field: 'dealerProfit', 'errors')}">
                                    <g:textField name="dealerProfit" value="${fieldValue(bean: breedPriceInstance, field: 'dealerProfit')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="infee"><g:message code="breedPrice.infee" default="Infee" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: breedPriceInstance, field: 'infee', 'errors')}">
                                    <g:textField name="infee" value="${fieldValue(bean: breedPriceInstance, field: 'infee')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="recover"><g:message code="breedPrice.recover" default="Recover" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: breedPriceInstance, field: 'recover', 'errors')}">
                                    <g:textField name="recover" value="${fieldValue(bean: breedPriceInstance, field: 'recover')}" />

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
