module AccidentesHelper
	def mostrardoc(id)
		Tipodoc.where(:id => id).pluck(:nombre).first
	end
	def mostrarmun(id)
		Municipio.where(:id => id).pluck(:nombre).first
	end	
	def mostrardep(id)
		Departamento.where(:id => id).pluck(:nombre).first
	end	
	def mostrarrealiza_su_labor(realiza_su_labor)
		if realiza_su_labor
			"si"
		  else
			"no"
		end
	end
	def mostrarmortal(mortal)
		if mortal
			"si"
		  else
			"no"
		end
	end
	def mostrarhubo_personas_que_presenciaron_el_accidente(hubo_personas_que_presenciaron_el_accidente)
		if hubo_personas_que_presenciaron_el_accidente
			"si"
		  else
			"no"
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

	def mostrartipoaccidente(id)
		Tipoaccidente.where(:id => id).pluck(:nombre).first
	end		
end
