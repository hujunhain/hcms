
<%@ page import="com.hhpc.hcms.domain.User" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="user.list" default="User List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="user.new" default="New User" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="user.list" default="User List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="user.id" />
                        
                   	    <g:sortableColumn property="username" title="Username" titleKey="user.username" />
                        
                   	    <g:sortableColumn property="password" title="Password" titleKey="user.password" />
                        
                   	    <g:sortableColumn property="accountExpired" title="Account Expired" titleKey="user.accountExpired" />
                        
                   	    <g:sortableColumn property="accountLocked" title="Account Locked" titleKey="user.accountLocked" />
                        
                   	    <th><g:message code="user.area" default="Area" /></th>
                   	    
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${userInstanceList}" status="i" var="userInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${userInstance.id}">${fieldValue(bean: userInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: userInstance, field: "username")}</td>
                        
                            <td>${fieldValue(bean: userInstance, field: "password")}</td>
                        
                            <td><g:formatBoolean boolean="${userInstance.accountExpired}" /></td>
                        
                            <td><g:formatBoolean boolean="${userInstance.accountLocked}" /></td>
                        
                            <td>${fieldValue(bean: userInstance, field: "area")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${userInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
