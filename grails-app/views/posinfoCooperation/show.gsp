
<%@ page import="com.hhpc.hcms.domain.PosinfoCooperation" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="posinfoCooperation.show" default="Show PosinfoCooperation" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="posinfoCooperation.list" default="PosinfoCooperation List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="posinfoCooperation.new" default="New PosinfoCooperation" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="posinfoCooperation.show" default="Show PosinfoCooperation" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form>
                <g:hiddenField name="id" value="${posinfoCooperationInstance?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.id" default="Id" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: posinfoCooperationInstance, field: "id")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.address" default="Address" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: posinfoCooperationInstance, field: "address")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.area" default="Area" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="area" action="show" id="${posinfoCooperationInstance?.area?.id}">${posinfoCooperationInstance?.area?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.baseSales" default="Base Sales" />:</td>
                                
                                <td  valign="top" style="text-align: left;" class="value">
                                    <ul>
                                    <g:each in="${posinfoCooperationInstance?.baseSales}" var="posinfoBaseSaleInstance">
                                        <li><g:link controller="posinfoBaseSale" action="show" id="${posinfoBaseSaleInstance.id}">${posinfoBaseSaleInstance.encodeAsHTML()}</g:link></li>
                                    </g:each>
                                    </ul>
                                </td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.beginDate" default="Begin Date" />:</td>
                                
                                <td valign="top" class="value"><g:formatDate date="${posinfoCooperationInstance?.beginDate}" /></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.contractType" default="Contract Type" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="contractType" action="show" id="${posinfoCooperationInstance?.contractType?.id}">${posinfoCooperationInstance?.contractType?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.createDate" default="Create Date" />:</td>
                                
                                <td valign="top" class="value"><g:formatDate date="${posinfoCooperationInstance?.createDate}" /></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.createTime" default="Create Time" />:</td>
                                
                                <td valign="top" class="value"><g:formatDate date="${posinfoCooperationInstance?.createTime}" /></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.dealer" default="Dealer" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="dealer" action="show" id="${posinfoCooperationInstance?.dealer?.id}">${posinfoCooperationInstance?.dealer?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.declareDate" default="Declare Date" />:</td>
                                
                                <td valign="top" class="value"><g:formatDate date="${posinfoCooperationInstance?.declareDate}" /></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.endDate" default="End Date" />:</td>
                                
                                <td valign="top" class="value"><g:formatDate date="${posinfoCooperationInstance?.endDate}" /></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.engage" default="Engage" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: posinfoCooperationInstance, field: "engage")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.feeCycle" default="Fee Cycle" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: posinfoCooperationInstance, field: "feeCycle")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.feePeriod" default="Fee Period" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: posinfoCooperationInstance, field: "feePeriod")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.fullName" default="Full Name" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: posinfoCooperationInstance, field: "fullName")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.name" default="Name" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: posinfoCooperationInstance, field: "name")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.ourRisk" default="Our Risk" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: posinfoCooperationInstance, field: "ourRisk")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.state" default="State" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="posinfoState" action="show" id="${posinfoCooperationInstance?.state?.id}">${posinfoCooperationInstance?.state?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="posinfoCooperation.type" default="Type" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="posinfoType" action="show" id="${posinfoCooperationInstance?.type?.id}">${posinfoCooperationInstance?.type?.encodeAsHTML()}</g:link></td>
                                
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
