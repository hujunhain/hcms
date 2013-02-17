
<%@ page import="com.hhpc.hcms.domain.Posinfo" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="posinfo.edit" default="Edit Posinfo" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="posinfo.list" default="Posinfo List" /></g:link></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="posinfo.new" default="New Posinfo" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="posinfo.edit" default="Edit Posinfo" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${posinfoInstance}">
            <div class="errors">
                <g:renderErrors bean="${posinfoInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form method="post" >
                <g:hiddenField name="id" value="${posinfoInstance?.id}" />
                <g:hiddenField name="version" value="${posinfoInstance?.version}" />
                <div class="dialog">
                    <table>
                        <tbody>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="address"><g:message code="posinfo.address" default="Address" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoInstance, field: 'address', 'errors')}">
                                    <g:textField name="address" value="${fieldValue(bean: posinfoInstance, field: 'address')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="area"><g:message code="posinfo.area" default="Area" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoInstance, field: 'area', 'errors')}">
                                    <g:select name="area.id" from="${com.hhpc.hcms.domain.Area.list()}" optionKey="id" value="${posinfoInstance?.area?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="baseSales"><g:message code="posinfo.baseSales" default="Base Sales" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoInstance, field: 'baseSales', 'errors')}">
                                    
<ul>
<g:each in="${posinfoInstance?.baseSales}" var="posinfoBaseSaleInstance">
    <li><g:link controller="posinfoBaseSale" action="show" id="${posinfoBaseSaleInstance.id}">${posinfoBaseSaleInstance?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="posinfoBaseSale" params="['posinfo.id': posinfoInstance?.id]" action="create"><g:message code="posinfoBaseSale.new" default="New PosinfoBaseSale" /></g:link>


                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="createDate"><g:message code="posinfo.createDate" default="Create Date" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoInstance, field: 'createDate', 'errors')}">
                                    <g:datePicker name="createDate" value="${posinfoInstance?.createDate}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="engage"><g:message code="posinfo.engage" default="Engage" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoInstance, field: 'engage', 'errors')}">
                                    <g:textField name="engage" value="${fieldValue(bean: posinfoInstance, field: 'engage')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="feePeriod"><g:message code="posinfo.feePeriod" default="Fee Period" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoInstance, field: 'feePeriod', 'errors')}">
                                    <g:textField name="feePeriod" value="${fieldValue(bean: posinfoInstance, field: 'feePeriod')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="fullName"><g:message code="posinfo.fullName" default="Full Name" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoInstance, field: 'fullName', 'errors')}">
                                    <g:textField name="fullName" value="${fieldValue(bean: posinfoInstance, field: 'fullName')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="name"><g:message code="posinfo.name" default="Name" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoInstance, field: 'name', 'errors')}">
                                    <g:textField name="name" value="${fieldValue(bean: posinfoInstance, field: 'name')}" />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="state"><g:message code="posinfo.state" default="State" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoInstance, field: 'state', 'errors')}">
                                    <g:select name="state.id" from="${com.hhpc.hcms.domain.PosinfoState.list()}" optionKey="id" value="${posinfoInstance?.state?.id}"  />

                                </td>
                            </tr>
                        
                            <tr class="prop">
                                <td valign="top" class="name">
                                    <label for="type"><g:message code="posinfo.type" default="Type" />:</label>
                                </td>
                                <td valign="top" class="value ${hasErrors(bean: posinfoInstance, field: 'type', 'errors')}">
                                    <g:select name="type.id" from="${com.hhpc.hcms.domain.PosinfoType.list()}" optionKey="id" value="${posinfoInstance?.type?.id}"  />

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
