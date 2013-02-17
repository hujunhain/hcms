<%@ page import="com.hhpc.hcms.domain.PubPosinfoCoop" %>
<r:require module="jquery-ui"/>
<r:external  plugin="jquery-ui" dir="js/jquery/i18n" file="jquery.ui.datepicker-zh-CN.js" />
<style>
body {
    background: #ffffff;
    color: #333333;
    margin: 0 auto;
    max-width: 100%;
    overflow-x: hidden; /* prevents box-shadow causing a horizontal scrollbar in firefox when viewport < 960px wide */
    -moz-box-shadow: 0 0 0.3em #255b17;
    -webkit-box-shadow: 0 0 0.3em #255b17;
    box-shadow: 0 0 0.3em #255b17;

}

input, select, textarea {
    background-color: #fcfcfc;
    border: 1px solid #cccccc;
    font-size: 1em;
    padding: 0.2em 0.4em;
}
input[type=text] {

}
.fieldcontain_ssssss { TEXT-ALIGN: center;MARGIN-RIGHT: auto; MARGIN-LEFT: auto;}

</style>


<script>
    $(function( ){

        $.datepicker.setDefaults($.datepicker.regional['zh-CN']);

        $( "#beginDate" ).datepicker({
            showMonthAfterYear: true, // 月在年之后显示
          //  changeMonth: true,   // 允许选择月份
          //  changeYear: true,   // 允许选择年份
            dateFormat:'yy年mm月dd日',  // 设置日期格式
            closeText:'关闭',   // 只有showButtonPanel: true才会显示出来
            duration: 'fast',
            showAnim:'fadeIn',

            showOtherMonths: true ,
            onSelect:function(dateText,inst){

                $("#endDate").datepicker("option","minDate",dateText);

            }
        });

        $( "#endDate" ).datepicker({
            showMonthAfterYear: true, // 月在年之后显示
            //  changeMonth: true,   // 允许选择月份
            //  changeYear: true,   // 允许选择年份
            dateFormat:'yy年mm月dd日',  // 设置日期格式
            closeText:'关闭',   // 只有showButtonPanel: true才会显示出来
            duration: 'fast',
            showAnim:'fadeIn',

            showOtherMonths: true  ,
            onSelect:function(dateText,inst){

                $("#beginDate").datepicker("option","maxDate",dateText);

            }
        });
    });

</script>

<div class="fieldcontain_ssssss ">

    <g:select name="area.id" from="${com.hhpc.hcms.domain.Area.list()}" optionKey="id" value="${pubPosinfoCoopInstance?.area?.id}"   style="width: 120px" />区
    <g:textField name="name" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'name')}" style="width: 100px"/> 终端

    <input type="text" id="beginDate" name="beginDate" value="${pubPosinfoCoopInstance?.beginDate}"  readonly="readonly" style="width: 120px"/>--
    <input type="text" id="endDate" name="endDate" value="${pubPosinfoCoopInstance?.endDate}"  readonly="readonly" style="width: 120px"/>



    合作方案申请表
</div>

<table border="1">
    <tr>
        <td> <g:message code="pubPosinfoCoop.type" default="Type" /> </td>
        <td>
            <g:select name="type.id" from="${com.hhpc.hcms.domain.PosinfoType.list()}" optionKey="id" value="${pubPosinfoCoopInstance?.type?.id}"  />
        </td>

        <td><g:message code="pubPosinfoCoop.dealer" default="Dealer" /></td>
        <td>
            <g:select name="dealer.id" from="${com.hhpc.hcms.domain.Dealer.list()}" optionKey="id" value="${pubPosinfoCoopInstance?.dealer?.id}"  />
        </td>
    </tr>
</table>



<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'address', 'error')} ">
	<label for="address">
		<g:message code="pubPosinfoCoop.address" default="Address" />
		
	</label>
	<g:textField name="address" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'address')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'area', 'error')} required">
	<label for="area">
		<g:message code="pubPosinfoCoop.area" default="Area" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="area.id" from="${com.hhpc.hcms.domain.Area.list()}" optionKey="id" value="${pubPosinfoCoopInstance?.area?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'barNum', 'error')} required">
	<label for="barNum">
		<g:message code="pubPosinfoCoop.barNum" default="Bar Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="barNum" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'barNum')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'barRate', 'error')} required">
	<label for="barRate">
		<g:message code="pubPosinfoCoop.barRate" default="Bar Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="barRate" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'barRate')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'baseSales', 'error')} ">
	<label for="baseSales">
		<g:message code="pubPosinfoCoop.baseSales" default="Base Sales" />
		
	</label>
	
<ul>
<g:each in="${pubPosinfoCoopInstance?.baseSales}" var="posinfoBaseSaleInstance">
    <li><g:link controller="posinfoBaseSale" action="show" id="${posinfoBaseSaleInstance.id}">${posinfoBaseSaleInstance?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="posinfoBaseSale" params="['pubPosinfoCoop.id': pubPosinfoCoopInstance?.id]" action="create"><g:message code="posinfoBaseSale.new" default="New PosinfoBaseSale" /></g:link>


</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'beginDate', 'error')} required">
	<label for="beginDate">
		<g:message code="pubPosinfoCoop.beginDate" default="Begin Date" />
		<span class="required-indicator">*</span>
	</label>


</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'createDate', 'error')} required">
	<label for="createDate">
		<g:message code="pubPosinfoCoop.createDate" default="Create Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="createDate" value="${pubPosinfoCoopInstance?.createDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'dealer', 'error')} required">
	<label for="dealer">
		<g:message code="pubPosinfoCoop.dealer" default="Dealer" />
		<span class="required-indicator">*</span>
	</label>


</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'declareDate', 'error')} required">
	<label for="declareDate">
		<g:message code="pubPosinfoCoop.declareDate" default="Declare Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="declareDate" value="${pubPosinfoCoopInstance?.declareDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="pubPosinfoCoop.endDate" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" value="${pubPosinfoCoopInstance?.endDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'engage', 'error')} required">
	<label for="engage">
		<g:message code="pubPosinfoCoop.engage" default="Engage" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="engage" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'engage')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'feeCycle', 'error')} required">
	<label for="feeCycle">
		<g:message code="pubPosinfoCoop.feeCycle" default="Fee Cycle" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="feeCycle.id" from="${com.hhpc.hcms.domain.PosinfoFeeCycle.list()}" optionKey="id" value="${pubPosinfoCoopInstance?.feeCycle?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'feePeriod', 'error')} ">
	<label for="feePeriod">
		<g:message code="pubPosinfoCoop.feePeriod" default="Fee Period" />
		
	</label>
	<g:textField name="feePeriod" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'feePeriod')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'fullName', 'error')} ">
	<label for="fullName">
		<g:message code="pubPosinfoCoop.fullName" default="Full Name" />
		
	</label>
	<g:textField name="fullName" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'fullName')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="pubPosinfoCoop.name" default="Name" />
		
	</label>
	<g:textField name="name" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'name')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'ourRisk', 'error')} required">
	<label for="ourRisk">
		<g:message code="pubPosinfoCoop.ourRisk" default="Our Risk" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ourRisk" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'ourRisk')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'plans', 'error')} ">
	<label for="plans">
		<g:message code="pubPosinfoCoop.plans" default="Plans" />
		
	</label>
	
<ul>
<g:each in="${pubPosinfoCoopInstance?.plans}" var="pubPosinfoPlanInstance">
    <li><g:link controller="pubPosinfoPlan" action="show" id="${pubPosinfoPlanInstance.id}">${pubPosinfoPlanInstance?.encodeAsHTML()}</g:link></li>
</g:each>
</ul>
<g:link controller="pubPosinfoPlan" params="['pubPosinfoCoop.id': pubPosinfoCoopInstance?.id]" action="create"><g:message code="pubPosinfoPlan.new" default="New PubPosinfoPlan" /></g:link>


</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'roomNum', 'error')} required">
	<label for="roomNum">
		<g:message code="pubPosinfoCoop.roomNum" default="Room Num" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="roomNum" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'roomNum')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'roomRate', 'error')} required">
	<label for="roomRate">
		<g:message code="pubPosinfoCoop.roomRate" default="Room Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="roomRate" value="${fieldValue(bean: pubPosinfoCoopInstance, field: 'roomRate')}" />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'state', 'error')} required">
	<label for="state">
		<g:message code="pubPosinfoCoop.state" default="State" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="state.id" from="${com.hhpc.hcms.domain.PosinfoState.list()}" optionKey="id" value="${pubPosinfoCoopInstance?.state?.id}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: pubPosinfoCoopInstance, field: 'type', 'error')} required">
	<label for="type">

		<span class="required-indicator">*</span>
	</label>


</div>

