package com.hhpc.hcms.domain

class Dealer {

    static constraints = {

    }
         String name
    static belongsTo = [area:Area]
    static hasMany = [posinfos:PosinfoCooperation]

    String toString()
    {
        name
    }
}
