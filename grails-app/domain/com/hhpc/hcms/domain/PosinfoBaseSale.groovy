package com.hhpc.hcms.domain

class PosinfoBaseSale {

    static belongsTo = [posinfo:Posinfo]
    static constraints = {
        ourCoopType nullable: true
        compCoopType nullable: true
        compBrand  nullable: true

    }
    AlcoholType alcoholType;//酒类
    int monthSale;//月均量
    Brand compBrand;//竞品
    CooperationType ourCoopType;//与我方合作类型
    CooperationType compCoopType;//与竞品合作类型
}
