package com.hhpc.hcms.domain

class Posinfo {


    String name;      //场所名称
    String fullName;           //场所全称

    PosinfoType type;     //场所类型

    float engage;//经营年数
    PosinfoState state;// 生意稳定情况      ／
    String feePeriod    //账期


    String address;//地址
    Date createDate;
    Area area;//所在区域


    public Posinfo(){
        state=new PosinfoState();
        type=new  PosinfoType();
        area=new Area();
    }


    static hasMany = [baseSales:PosinfoBaseSale]

    static belongsTo = [area:Area]

    static mapping = {
        tablePerHierarchy false   //禁用table-per-hierarchy策略即可
    }

    String toString(){

        name
    }
}
