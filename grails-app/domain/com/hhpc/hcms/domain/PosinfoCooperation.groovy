package com.hhpc.hcms.domain
  /*
  经销商合作信息
   */
class PosinfoCooperation extends Posinfo {


    ContractType contractType;    //签约类型
    int ourRisk //公司承担风险比例
    int feeCycle;//结款周期-天
    Date beginDate ;//合作开始
    Date endDate; /*合作结束 */
    Date createTime;//创建时间
    Date declareDate;//申报日期

    static belongsTo = [dealer:Dealer]//隶属经销商
    static constraints = {

    }

    static mapping = {
      //  tablePerHierarchy false   //禁用table-per-hierarchy策略即可
    }

    public PosinfoCoop() {
        createDate = new Date()  ;
        declareDate=new Date();
    }
}
