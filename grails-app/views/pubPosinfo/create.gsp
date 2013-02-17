
<%@ page import="com.hhpc.hcms.domain.PubPosinfo" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="pubPosinfo.create" default="Create PubPosinfo" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="pubPosinfo.list" default="PubPosinfo List" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="pubPosinfo.create" default="Create PubPosinfo" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${pubPosinfoInstance}">
            <div class="errors">
                <g:renderErrors bean="${pubPosinfoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="address"><g:message code="pubPosinfo.address" default="Address" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoInstance, field: 'address', 'errors')}">
                                    <g:textField name="address" value="${fieldValue(bean: pubPosinfoInstance, field: 'address')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="area"><g:message code="pubPosinfo.area" default="Area" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoInstance, field: 'area', 'errors')}">
                                    <g:select name="area.id" from="${com.hhpc.hcms.domain.Area.list()}" optionKey="id" value="${pubPosinfoInstance?.area?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="barNum"><g:message code="pubPosinfo.barNum" default="Bar Num" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoInstance, field: 'barNum', 'errors')}">
                                    <g:textField name="barNum" value="${fieldValue(bean: pubPosinfoInstance, field: 'barNum')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="barRate"><g:message code="pubPosinfo.barRate" default="Bar Rate" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoInstance, field: 'barRate', 'errors')}">
                                    <g:textField name="barRate" value="${fieldValue(bean: pubPosinfoInstance, field: 'barRate')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="createDate"><g:message code="pubPosinfo.createDate" default="Create Date" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoInstance, field: 'createDate', 'errors')}">
                                    <g:datePicker name="createDate" value="${pubPosinfoInstance?.createDate}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="engage"><g:message code="pubPosinfo.engage" default="Engage" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoInstance, field: 'engage', 'errors')}">
                                    <g:textField name="engage" value="${fieldValue(bean: pubPosinfoInstance, field: 'engage')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="feePeriod"><g:message code="pubPosinfo.feePeriod" default="Fee Period" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoInstance, field: 'feePeriod', 'errors')}">
                                    <g:textField name="feePeriod" value="${fieldValue(bean: pubPosinfoInstance, field: 'feePeriod')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fullName"><g:message code="pubPosinfo.fullName" default="Full Name" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoInstance, field: 'fullName', 'errors')}">
                                    <g:textField name="fullName" value="${fieldValue(bean: pubPosinfoInstance, field: 'fullName')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="pubPosinfo.name" default="Name" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${fieldValue(bean: pubPosinfoInstance, field: 'name')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="roomNum"><g:message code="pubPosinfo.roomNum" default="Room Num" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoInstance, field: 'roomNum', 'errors')}">
                                    <g:textField name="roomNum" value="${fieldValue(bean: pubPosinfoInstance, field: 'roomNum')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="roomRate"><g:message code="pubPosinfo.roomRate" default="Room Rate" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoInstance, field: 'roomRate', 'errors')}">
                                    <g:textField name="roomRate" value="${fieldValue(bean: pubPosinfoInstance, field: 'roomRate')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="state"><g:message code="pubPosinfo.state" default="State" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoInstance, field: 'state', 'errors')}">
                                    <g:select name="state.id" from="${com.hhpc.hcms.domain.PosinfoState.list()}" optionKey="id" value="${pubPosinfoInstance?.state?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="type"><g:message code="pubPosinfo.type" default="Type" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: pubPosinfoInstance, field: 'type', 'errors')}">
                                    <g:select name="type.id" from="${com.hhpc.hcms.domain.PosinfoType.list()}" optionKey="id" value="${pubPosinfoInstance?.type?.id}"  />

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
