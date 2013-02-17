
<%@ page import="com.hhpc.SecUser" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="secUser.list" default="SecUser List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="secUser.new" default="New SecUser" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="secUser.list" default="SecUser List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="secUser.id" />
                        
                   	    <g:sortableColumn property="username" title="Username" titleKey="secUser.username" />
                        
                   	    <g:sortableColumn property="password" title="Password" titleKey="secUser.password" />
                        
                   	    <g:sortableColumn property="accountExpired" title="Account Expired" titleKey="secUser.accountExpired" />
                        
                   	    <g:sortableColumn property="accountLocked" title="Account Locked" titleKey="secUser.accountLocked" />
                        
                   	    <g:sortableColumn property="enabled" title="Enabled" titleKey="secUser.enabled" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${secUserInstanceList}" status="i" var="secUserInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${secUserInstance.id}">${fieldValue(bean: secUserInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: secUserInstance, field: "username")}</td>
                        
                            <td>${fieldValue(bean: secUserInstance, field: "password")}</td>
                        
                            <td><g:formatBoolean boolean="${secUserInstance.accountExpired}" /></td>
                        
                            <td><g:formatBoolean boolean="${secUserInstance.accountLocked}" /></td>
                        
                            <td><g:formatBoolean boolean="${secUserInstance.enabled}" /></td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${secUserInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
