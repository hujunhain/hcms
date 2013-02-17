package com.hhpc.hcms.domain
//夜场父类
class PubPosinfo extends Posinfo {

    float roomRate;//开房率
    float barRate;//开台率
    int roomNum; //房间数
    int barNum;//吧台数

    static constraints = {
    }

    public PosinfoCoop() {

    }
}
