package com.hhpc.hcms.domain

class Area {

    static constraints = {
        preArea nullable: true;
    }

    String name ; //区域名称
    Area preArea;//上级区域

    public String toString()
    {
        name
    }

}
