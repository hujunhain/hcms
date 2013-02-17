
<%@ page import="com.hhpc.hcms.domain.PubPosinfoCoop" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="pubPosinfoCoop.show" default="Show PubPosinfoCoop" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="pubPosinfoCoop.list" default="PubPosinfoCoop List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="pubPosinfoCoop.new" default="New PubPosinfoCoop" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="pubPosinfoCoop.show" default="Show PubPosinfoCoop" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form>
                <g:hiddenField name="id" value="${pubPosinfoCoopInstance?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.id" default="Id" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoCoopInstance, field: "id")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.contractType" default="Contract Type" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="contractType" action="show" id="${pubPosinfoCoopInstance?.contractType?.id}">${pubPosinfoCoopInstance?.contractType?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.address" default="Address" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoCoopInstance, field: "address")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.area" default="Area" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="area" action="show" id="${pubPosinfoCoopInstance?.area?.id}">${pubPosinfoCoopInstance?.area?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.barNum" default="Bar Num" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoCoopInstance, field: "barNum")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.barRate" default="Bar Rate" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoCoopInstance, field: "barRate")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.baseSales" default="Base Sales" />:</td>
                                
                                <td  valign="top" style="text-align: left;" class="value">
                                    <ul>
                                    <g:each in="${pubPosinfoCoopInstance?.baseSales}" var="posinfoBaseSaleInstance">
                                        <li><g:link controller="posinfoBaseSale" action="show" id="${posinfoBaseSaleInstance.id}">${posinfoBaseSaleInstance.encodeAsHTML()}</g:link></li>
                                    </g:each>
                                    </ul>
                                </td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.beginDate" default="Begin Date" />:</td>
                                
                                <td valign="top" class="value"><g:formatDate date="${pubPosinfoCoopInstance?.beginDate}" /></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.createDate" default="Create Date" />:</td>
                                
                                <td valign="top" class="value"><g:formatDate date="${pubPosinfoCoopInstance?.createDate}" /></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.dealer" default="Dealer" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="dealer" action="show" id="${pubPosinfoCoopInstance?.dealer?.id}">${pubPosinfoCoopInstance?.dealer?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.declareDate" default="Declare Date" />:</td>
                                
                                <td valign="top" class="value"><g:formatDate date="${pubPosinfoCoopInstance?.declareDate}" /></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.endDate" default="End Date" />:</td>
                                
                                <td valign="top" class="value"><g:formatDate date="${pubPosinfoCoopInstance?.endDate}" /></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.engage" default="Engage" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoCoopInstance, field: "engage")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.feeCycle" default="Fee Cycle" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="posinfoFeeCycle" action="show" id="${pubPosinfoCoopInstance?.feeCycle?.id}">${pubPosinfoCoopInstance?.feeCycle?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.feePeriod" default="Fee Period" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoCoopInstance, field: "feePeriod")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.fullName" default="Full Name" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoCoopInstance, field: "fullName")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.name" default="Name" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoCoopInstance, field: "name")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.ourRisk" default="Our Risk" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoCoopInstance, field: "ourRisk")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.plans" default="Plans" />:</td>
                                
                                <td  valign="top" style="text-align: left;" class="value">
                                    <ul>
                                    <g:each in="${pubPosinfoCoopInstance?.plans}" var="pubPosinfoPlanInstance">
                                        <li><g:link controller="pubPosinfoPlan" action="show" id="${pubPosinfoPlanInstance.id}">${pubPosinfoPlanInstance.encodeAsHTML()}</g:link></li>
                                    </g:each>
                                    </ul>
                                </td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.roomNum" default="Room Num" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoCoopInstance, field: "roomNum")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.roomRate" default="Room Rate" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoCoopInstance, field: "roomRate")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.state" default="State" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="posinfoState" action="show" id="${pubPosinfoCoopInstance?.state?.id}">${pubPosinfoCoopInstance?.state?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfoCoop.type" default="Type" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="posinfoType" action="show" id="${pubPosinfoCoopInstance?.type?.id}">${pubPosinfoCoopInstance?.type?.encodeAsHTML()}</g:link></td>
                                
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
