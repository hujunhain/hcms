package com.hhpc.hcms.domain

class Brand {

    static constraints = {
    }

     String name;
     OurFlag ourFlag;

    static hasMany = [breeds: Breed]

    String toString()
    {
        name
    }
}
