package com.hhpc.hcms.domain

class Breed {

    static constraints = {
    }

    String fullName; //全名
    String shortName ;//报数简称
    String name;
    AlcoholType typeName;

    static belongsTo = [brand:Brand]

    String toString(){

        ""+brand+" --" +name
    }
}
