package com.hhpc.hcms.domain

import com.hhpc.SecUser
import org.springframework.context.support.StaticApplicationContext

class User extends SecUser {

    static constraints = {
    }

    String name;//姓名
    String mobleNo;//手机


    static belongsTo = [area:Area]
}
