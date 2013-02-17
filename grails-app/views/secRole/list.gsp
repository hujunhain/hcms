
<%@ page import="com.hhpc.SecRole" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="secRole.list" default="SecRole List" /></title>
    </head>
    <body>
        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="create" action="create"><g:message code="secRole.new" default="New SecRole" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="secRole.list" default="SecRole List" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <div class="list">
                <table>
                    <thead>
                        <tr>
                        
                   	    <g:sortableColumn property="id" title="Id" titleKey="secRole.id" />
                        
                   	    <g:sortableColumn property="authority" title="Authority" titleKey="secRole.authority" />
                        
                        </tr>
                    </thead>
                    <tbody>
                    <g:each in="${secRoleInstanceList}" status="i" var="secRoleInstance">
                        <tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
                        
                            <td><g:link action="show" id="${secRoleInstance.id}">${fieldValue(bean: secRoleInstance, field: "id")}</g:link></td>
                        
                            <td>${fieldValue(bean: secRoleInstance, field: "authority")}</td>
                        
                        </tr>
                    </g:each>
                    </tbody>
                </table>
            </div>
            <div class="paginateButtons">
                <g:paginate total="${secRoleInstanceTotal}" />
            </div>
        </div>
    </body>
</html>
