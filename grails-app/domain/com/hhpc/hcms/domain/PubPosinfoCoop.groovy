package com.hhpc.hcms.domain

class PubPosinfoCoop extends PubPosinfo {

    ContractType contractType;    //签约类型
    int ourRisk //公司承担风险比例
    PosinfoFeeCycle feeCycle;//结款周期
    Date beginDate ;//合作开始
    Date endDate; /*合作结束 */

    Date declareDate;//申报日期

    static belongsTo = [dealer:Dealer]//隶属经销商
    static hasMany = [plans:PubPosinfoPlan]
    static constraints = {
        contractType nullable: true
    }

    static mapping = {
       // tablePerHierarchy true   //禁用table-per-hierarchy策略即可
    }



    public PubPosinfoCoop() {
        createDate = new Date()  ;
        declareDate=new Date();
    }
}
