module IncidentesHelper

    def mostrartipoincidente(id)
        Tipoincidente.where(:id => id).pluck(:nombre).first
    end     

	def mostrar_lugar_de_ocurrencia(lugar_de_ocurrencia)
		if lugar_de_ocurrencia
		"dentro de la entidad"
		 
		else
		"fuera de la entidad"
		end
   end

   def showGrafica(tipoG,datosG)
        case(tipoG)
        	when "pie_3d"
        		 image_tag ( Gchart.pie_3d(datosG) )	
        	when "line" 
        		 image_tag ( Gchart.line(datosG) )		
        	when "bar"
        		 image_tag ( Gchart.bar(datosG) )			
        end
	end	
end
