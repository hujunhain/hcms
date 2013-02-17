class UrlMappings {
    static excludes = ['/**.html', '/**.php', '/**.html']
	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}


		}

		"/"(view:"/index")
		"500"(view:'/error')

        "/login/$action?"(controller: "login")
        "/logout/$action?"(controller: "logout")
	}





}
