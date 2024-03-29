dataSource {
    pooled = false
    driverClassName = "com.mysql.jdbc.Driver"
    username = "root"
    password = "admin"
    dialect = "org.hibernate.dialect.MySQL5InnoDBDialect"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "update" // one of 'create', 'create-drop','update'
//          url = "jdbc:hsqldb:mem:devDB"
            url = "jdbc:mysql://localhost:3306/mark?useUnicode=true&characterEncoding=UTF-8"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
//          url = "jdbc:hsqldb:mem:testDb"
            url = "jdbc:mysql://localhost:3306/mark?useUnicode=true&characterEncoding=UTF-8"
        }
    }
    production {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost:3306/mark?useUnicode=true&characterEncoding=UTF-8"
            pooled = true
            properties {
               maxActive = -1
               minEvictableIdleTimeMillis=1800000
               timeBetweenEvictionRunsMillis=1800000
               numTestsPerEvictionRun=3
               testOnBorrow=true
               testWhileIdle=true
               testOnReturn=true
               validationQuery="SELECT 1"
            }
        }
    }
}
