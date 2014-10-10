module IncapacidadsHelper

    def mostrartipoincapacidad(id)
        Tipoincapacidad.where(:id => id).pluck(:nombre).first
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
