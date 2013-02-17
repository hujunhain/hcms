
<%@ page import="com.hhpc.hcms.domain.PubPosinfo" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="pubPosinfo.show" default="Show PubPosinfo" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="pubPosinfo.list" default="PubPosinfo List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="pubPosinfo.new" default="New PubPosinfo" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="pubPosinfo.show" default="Show PubPosinfo" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:form>
                <g:hiddenField name="id" value="${pubPosinfoInstance?.id}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfo.id" default="Id" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoInstance, field: "id")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfo.address" default="Address" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoInstance, field: "address")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfo.area" default="Area" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="area" action="show" id="${pubPosinfoInstance?.area?.id}">${pubPosinfoInstance?.area?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfo.barNum" default="Bar Num" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoInstance, field: "barNum")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfo.barRate" default="Bar Rate" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoInstance, field: "barRate")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfo.baseSales" default="Base Sales" />:</td>
                                
                                <td  valign="top" style="text-align: left;" class="value">
                                    <ul>
                                    <g:each in="${pubPosinfoInstance?.baseSales}" var="posinfoBaseSaleInstance">
                                        <li><g:link controller="posinfoBaseSale" action="show" id="${posinfoBaseSaleInstance.id}">${posinfoBaseSaleInstance.encodeAsHTML()}</g:link></li>
                                    </g:each>
                                    </ul>
                                </td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfo.createDate" default="Create Date" />:</td>
                                
                                <td valign="top" class="value"><g:formatDate date="${pubPosinfoInstance?.createDate}" /></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfo.engage" default="Engage" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoInstance, field: "engage")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfo.feePeriod" default="Fee Period" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoInstance, field: "feePeriod")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfo.fullName" default="Full Name" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoInstance, field: "fullName")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfo.name" default="Name" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoInstance, field: "name")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfo.roomNum" default="Room Num" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoInstance, field: "roomNum")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfo.roomRate" default="Room Rate" />:</td>
                                
                                <td valign="top" class="value">${fieldValue(bean: pubPosinfoInstance, field: "roomRate")}</td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfo.state" default="State" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="posinfoState" action="show" id="${pubPosinfoInstance?.state?.id}">${pubPosinfoInstance?.state?.encodeAsHTML()}</g:link></td>
                                
                            </tr>
                            
                            <tr class="prop">
                                <td valign="top" class="name"><g:message code="pubPosinfo.type" default="Type" />:</td>
                                
                                <td valign="top" class="value"><g:link controller="posinfoType" action="show" id="${pubPosinfoInstance?.type?.id}">${pubPosinfoInstance?.type?.encodeAsHTML()}</g:link></td>
                                
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
