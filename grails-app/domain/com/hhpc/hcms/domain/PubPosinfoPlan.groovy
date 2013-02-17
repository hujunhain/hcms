package com.hhpc.hcms.domain

class PubPosinfoPlan {

    String preContract  //上期协议情况
    String contractSupport //合作条件支持
    String sellSupport //销售策略支持
    String promotionSupport //我方其它产品促销支持
    String allSupport //落实全员推广支持
    String advSupport //场所最佳广告支持
    String compTactics //竟品折后实供与零售价政策

    String borrowSupport;//借支支持
    String propagandaSupport //消费者宣传费支持
    String specialSupport //特价费支持
    String giveSupport //赠饮酒支持
    String interactSupport //互动费支持
    String salerSupport //促销员推广支持
    String activitySupport //活动支持
    String advertising //广告宣传
    String giftSupport //常规用品支持
    String serveSupport//招待和交通费支持





    static belongsTo = [posinfo:PubPosinfoCoop]
    static constraints = {
        preContract(nullable: true,maxSize: 1000)
        contractSupport  (nullable: true,maxSize: 1000)
        sellSupport     (nullable: true,maxSize: 1000)
        promotionSupport   (nullable: true,maxSize: 1000)
        allSupport       (nullable: true,maxSize: 1000)
        advSupport      (nullable: true,maxSize: 1000)
        compTactics      (nullable: true,maxSize: 1000)
        borrowSupport      (nullable: true,maxSize: 1000)
        propagandaSupport  (nullable: true,maxSize: 1000)
        specialSupport (nullable: true,maxSize: 1000)
        giveSupport      (nullable: true,maxSize: 1000)
        interactSupport  (nullable: true,maxSize: 1000)
        salerSupport    (nullable: true,maxSize: 1000)
        activitySupport    (nullable: true,maxSize: 1000)
        advertising   (nullable: true,maxSize: 1000)
        giftSupport   (nullable: true,maxSize: 1000)
        serveSupport (nullable: true,maxSize: 1000)
    }
}
