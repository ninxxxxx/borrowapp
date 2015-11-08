class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        
        "/login/$action?"(controller: "login")
        "/logout/$action?"(controller: "logout")
        // "/"(controller:"Item", action:"userMain")
        "/"(view:"/index")
        "500"(view:'/error')
        "/user"(controller:"User", action:"userMain")
        "/item"(controller:"Item", action:"itemMain")
        "/adduser"(controller:"User", action:"addUser")
        "/additem"(controller:"Item", action:"addItem")
        "/picking"(controller:"Picking", action:"pickingMain")
        "/borrowing"(controller:"borrowing", action:"borrowingMain")
        "/noti"(controller:"Menu", action:"noti")
        "/history"(controller:"Menu", action:"history")
	}
}
