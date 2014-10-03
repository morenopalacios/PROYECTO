module UsersHelper

	def rol_usuario(rol)
		if rol == true
			"<span class='label-success'> Administrador </span>".html_safe
    	else
    		if rol == false
    	 		"<span class='label-success'> Usuario </span>".html_safe
    		end
   		end
	end
end
