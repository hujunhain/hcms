
<%@ page import="com.hhpc.hcms.domain.PubPosinfoCoop" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <meta name="layout" content="main" />
        <title><g:message code="pubPosinfoCoop.create" default="Create PubPosinfoCoop" /></title>




    </head>
    <body>



        <div class="nav">
            <span class="menuButton"><a class="home" href="${createLinkTo(dir: '')}"><g:message code="home" default="Home" /></a></span>
            <span class="menuButton"><g:link class="list" action="list"><g:message code="pubPosinfoCoop.list" default="PubPosinfoCoop List" /></g:link></span>
        </div>
        <div class="body">
            <h1><g:message code="pubPosinfoCoop.create" default="Create PubPosinfoCoop" /></h1>
            <g:if test="${flash.message}">
            <div class="message"><g:message code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}" /></div>
            </g:if>
            <g:hasErrors bean="${pubPosinfoCoopInstance}">
            <div class="errors">
                <g:renderErrors bean="${pubPosinfoCoopInstance}" as="list" />
            </div>
            </g:hasErrors>
            <g:form action="save" method="post" >


                <fieldset class="form">
                    <g:render template="form"/>
                </fieldset>
                <fieldset class="buttons">
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    <g:submitButton name="reset" class="save" value="${message(code: 'default.button.reset.label', default: 'Create')}" />
                    <g:submitButton name="create" class="save" value="${message(code: 'default.button.draft.label', default: 'Create')}" />
                </fieldset>
            </g:form>
        </div>
    </body>
</html>
