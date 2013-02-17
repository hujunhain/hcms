
<%@ page import="com.hhpc.hcms.domain.PosinfoCooperation" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="posinfoCooperation.create" default="Create PosinfoCooperation" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="posinfoCooperation.list" default="PosinfoCooperation List" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="posinfoCooperation.create" default="Create PosinfoCooperation" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${posinfoCooperationInstance}">
            <div class="errors">
                <g:renderErrors bean="${posinfoCooperationInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="address"><g:message code="posinfoCooperation.address" default="Address" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoCooperationInstance, field: 'address', 'errors')}">
                                    <g:textField name="address" value="${fieldValue(bean: posinfoCooperationInstance, field: 'address')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="area"><g:message code="posinfoCooperation.area" default="Area" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoCooperationInstance, field: 'area', 'errors')}">
                                    <g:select name="area.id" from="${com.hhpc.hcms.domain.Area.list()}" optionKey="id" value="${posinfoCooperationInstance?.area?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="beginDate"><g:message code="posinfoCooperation.beginDate" default="Begin Date" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoCooperationInstance, field: 'beginDate', 'errors')}">
                                    <g:datePicker name="beginDate" value="${posinfoCooperationInstance?.beginDate}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="contractType"><g:message code="posinfoCooperation.contractType" default="Contract Type" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoCooperationInstance, field: 'contractType', 'errors')}">
                                    <g:select name="contractType.id" from="${com.hhpc.hcms.domain.ContractType.list()}" optionKey="id" value="${posinfoCooperationInstance?.contractType?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="createDate"><g:message code="posinfoCooperation.createDate" default="Create Date" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoCooperationInstance, field: 'createDate', 'errors')}">
                                    <g:datePicker name="createDate" value="${posinfoCooperationInstance?.createDate}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="createTime"><g:message code="posinfoCooperation.createTime" default="Create Time" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoCooperationInstance, field: 'createTime', 'errors')}">
                                    <g:datePicker name="createTime" value="${posinfoCooperationInstance?.createTime}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="dealer"><g:message code="posinfoCooperation.dealer" default="Dealer" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoCooperationInstance, field: 'dealer', 'errors')}">
                                    <g:select name="dealer.id" from="${com.hhpc.hcms.domain.Dealer.list()}" optionKey="id" value="${posinfoCooperationInstance?.dealer?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="declareDate"><g:message code="posinfoCooperation.declareDate" default="Declare Date" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoCooperationInstance, field: 'declareDate', 'errors')}">
                                    <g:datePicker name="declareDate" value="${posinfoCooperationInstance?.declareDate}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="endDate"><g:message code="posinfoCooperation.endDate" default="End Date" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoCooperationInstance, field: 'endDate', 'errors')}">
                                    <g:datePicker name="endDate" value="${posinfoCooperationInstance?.endDate}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="engage"><g:message code="posinfoCooperation.engage" default="Engage" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoCooperationInstance, field: 'engage', 'errors')}">
                                    <g:textField name="engage" value="${fieldValue(bean: posinfoCooperationInstance, field: 'engage')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="feeCycle"><g:message code="posinfoCooperation.feeCycle" default="Fee Cycle" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoCooperationInstance, field: 'feeCycle', 'errors')}">
                                    <g:textField name="feeCycle" value="${fieldValue(bean: posinfoCooperationInstance, field: 'feeCycle')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="feePeriod"><g:message code="posinfoCooperation.feePeriod" default="Fee Period" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoCooperationInstance, field: 'feePeriod', 'errors')}">
                                    <g:textField name="feePeriod" value="${fieldValue(bean: posinfoCooperationInstance, field: 'feePeriod')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fullName"><g:message code="posinfoCooperation.fullName" default="Full Name" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoCooperationInstance, field: 'fullName', 'errors')}">
                                    <g:textField name="fullName" value="${fieldValue(bean: posinfoCooperationInstance, field: 'fullName')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="posinfoCooperation.name" default="Name" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoCooperationInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${fieldValue(bean: posinfoCooperationInstance, field: 'name')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="ourRisk"><g:message code="posinfoCooperation.ourRisk" default="Our Risk" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoCooperationInstance, field: 'ourRisk', 'errors')}">
                                    <g:textField name="ourRisk" value="${fieldValue(bean: posinfoCooperationInstance, field: 'ourRisk')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="state"><g:message code="posinfoCooperation.state" default="State" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoCooperationInstance, field: 'state', 'errors')}">
                                    <g:select name="state.id" from="${com.hhpc.hcms.domain.PosinfoState.list()}" optionKey="id" value="${posinfoCooperationInstance?.state?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="type"><g:message code="posinfoCooperation.type" default="Type" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoCooperationInstance, field: 'type', 'errors')}">
                                    <g:select name="type.id" from="${com.hhpc.hcms.domain.PosinfoType.list()}" optionKey="id" value="${posinfoCooperationInstance?.type?.id}"  />

                                </td>
                            </tr>
                        
                        </tbody>
                    </table>
                </div>
                <div class="buttons">
                    <span class="button"><g:submitButton name="create" class="save" value="${message(code: 'create', 'default': 'Create')}" /></span>
                </div>
            </g:form>
        </div>
    </body>
</html>
