package com.hhpc.hcms.domain

class BreedPrice {
     Area area;//区域
    Breed breed //品种
    int dealerPrice //统一供经销商价格
    int posInfoPrice //统一供终端价格
    int dealerProfit //经销商毛利润
    int infee //投入标准
    int recover //收回底价
    static constraints = {

        area()
        breed()
        dealerPrice()
        posInfoPrice()
        dealerProfit()
        infee()
        recover()
    }

    String toString()
    {
        ""+area +"-"+breed +":"+  recover
    }
}
