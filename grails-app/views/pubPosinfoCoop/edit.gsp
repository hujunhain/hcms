
<%@ page import="com.hhpc.hcms.domain.PubPosinfoCoop" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="pubPosinfoCoop.edit" default="Edit PubPosinfoCoop" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="pubPosinfoCoop.list" default="PubPosinfoCoop List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="pubPosinfoCoop.new" default="New PubPosinfoCoop" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="pubPosinfoCoop.edit" default="Edit PubPosinfoCoop" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${pubPosinfoCoopInstance}">
            <div class="errors">
                <g:renderErrors bean="${pubPosinfoCoopInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${pubPosinfoCoopInstance?.id}" />
                <g:hiddenField name="version" value="${pubPosinfoCoopInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="contractType"><g:message code="pubPosinfoCoop.contractType" default="Contract Type" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'contractType', 'errors')}">
                                    <g:select name="contractType.id" from="${com.hhpc.hcms.domain.ContractType.list()}" optionKey="id" value="${pubPosinfoCoopInstance?.contractType?.id}" noSelection="['null': '']" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="address"><g:message code="pubPosinfoCoop.address" default="Address" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'address', 'errors')}">
                                    <g:textField name="address" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'address')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="area"><g:message code="pubPosinfoCoop.area" default="Area" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'area', 'errors')}">
                                    <g:select name="area.id" from="${com.hhpc.hcms.domain.Area.list()}" optionKey="id" value="${pubPosinfoCoopInstance?.area?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="barNum"><g:message code="pubPosinfoCoop.barNum" default="Bar Num" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'barNum', 'errors')}">
                                    <g:textField name="barNum" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'barNum')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="barRate"><g:message code="pubPosinfoCoop.barRate" default="Bar Rate" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'barRate', 'errors')}">
                                    <g:textField name="barRate" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'barRate')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="baseSales"><g:message code="pubPosinfoCoop.baseSales" default="Base Sales" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'baseSales', 'errors')}">
                                    
<ul>
<g:each in="${pubPosinfoCoopInstance?.baseSales}" var="posinfoBaseSaleInstance">
    <li><g:link controller="posinfoBaseSale" action="show" id="${posinfoBaseSaleInstance.id}">${posinfoBaseSaleInstance?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="posinfoBaseSale" params="['pubPosinfoCoop.id': pubPosinfoCoopInstance?.id]" action="create"><g:message code="posinfoBaseSale.new" default="New PosinfoBaseSale" /></g:link>


                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="beginDate"><g:message code="pubPosinfoCoop.beginDate" default="Begin Date" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'beginDate', 'errors')}">
                                    <g:datePicker name="beginDate" value="${pubPosinfoCoopInstance?.beginDate}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="createDate"><g:message code="pubPosinfoCoop.createDate" default="Create Date" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'createDate', 'errors')}">
                                    <g:datePicker name="createDate" value="${pubPosinfoCoopInstance?.createDate}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dealer"><g:message code="pubPosinfoCoop.dealer" default="Dealer" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'dealer', 'errors')}">
                                    <g:select name="dealer.id" from="${com.hhpc.hcms.domain.Dealer.list()}" optionKey="id" value="${pubPosinfoCoopInstance?.dealer?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="declareDate"><g:message code="pubPosinfoCoop.declareDate" default="Declare Date" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'declareDate', 'errors')}">
                                    <g:datePicker name="declareDate" value="${pubPosinfoCoopInstance?.declareDate}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="endDate"><g:message code="pubPosinfoCoop.endDate" default="End Date" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'endDate', 'errors')}">
                                    <g:datePicker name="endDate" value="${pubPosinfoCoopInstance?.endDate}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="engage"><g:message code="pubPosinfoCoop.engage" default="Engage" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'engage', 'errors')}">
                                    <g:textField name="engage" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'engage')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="feeCycle"><g:message code="pubPosinfoCoop.feeCycle" default="Fee Cycle" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'feeCycle', 'errors')}">
                                    <g:select name="feeCycle.id" from="${com.hhpc.hcms.domain.PosinfoFeeCycle.list()}" optionKey="id" value="${pubPosinfoCoopInstance?.feeCycle?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="feePeriod"><g:message code="pubPosinfoCoop.feePeriod" default="Fee Period" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'feePeriod', 'errors')}">
                                    <g:textField name="feePeriod" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'feePeriod')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fullName"><g:message code="pubPosinfoCoop.fullName" default="Full Name" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'fullName', 'errors')}">
                                    <g:textField name="fullName" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'fullName')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="pubPosinfoCoop.name" default="Name" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'name')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ourRisk"><g:message code="pubPosinfoCoop.ourRisk" default="Our Risk" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'ourRisk', 'errors')}">
                                    <g:textField name="ourRisk" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'ourRisk')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="plans"><g:message code="pubPosinfoCoop.plans" default="Plans" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'plans', 'errors')}">
                                    
<ul>
<g:each in="${pubPosinfoCoopInstance?.plans}" var="pubPosinfoPlanInstance">
    <li><g:link controller="pubPosinfoPlan" action="show" id="${pubPosinfoPlanInstance.id}">${pubPosinfoPlanInstance?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="pubPosinfoPlan" params="['pubPosinfoCoop.id': pubPosinfoCoopInstance?.id]" action="create"><g:message code="pubPosinfoPlan.new" default="New PubPosinfoPlan" /></g:link>


                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="roomNum"><g:message code="pubPosinfoCoop.roomNum" default="Room Num" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'roomNum', 'errors')}">
                                    <g:textField name="roomNum" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'roomNum')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="roomRate"><g:message code="pubPosinfoCoop.roomRate" default="Room Rate" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'roomRate', 'errors')}">
                                    <g:textField name="roomRate" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'roomRate')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="state"><g:message code="pubPosinfoCoop.state" default="State" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'state', 'errors')}">
                                    <g:select name="state.id" from="${com.hhpc.hcms.domain.PosinfoState.list()}" optionKey="id" value="${pubPosinfoCoopInstance?.state?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="type"><g:message code="pubPosinfoCoop.type" default="Type" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoCoopInstance, field: 'type', 'errors')}">
                                    <g:select name="type.id" from="${com.hhpc.hcms.domain.PosinfoType.list()}" optionKey="id" value="${pubPosinfoCoopInstance?.type?.id}"  />

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
