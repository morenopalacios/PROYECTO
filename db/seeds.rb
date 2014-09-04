# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



tipodocs = [
	    {nombre: "Cedula de Ciudadania"},
	    {nombre: "Tarjeta de Identidad"}, 
	    {nombre: "Registro Civil"},
	    {nombre: "Cedula de Extranjeria"}
	    
	]

tipodocs.each do | tipodoc |

	Tipodoc.create(tipodoc) unless Tipodoc.exists?(tipodoc)
		
end


personalinvolucrados = [
	    {nombre: "Funcionario"},
	    {nombre: "Contratista"}, 
	    {nombre: "Visitante"}
	    
	    
	]

personalinvolucrados.each do | personalinvolucrado |

	Personalinvolucrado.create(personalinvolucrado) unless Personalinvolucrado.exists?(personalinvolucrado)
		
end


centros = [
	    {nombre: " Centro Tecnológico del Mobiliario"},
	    {nombre: "Centro de Formación en Diseño Cofección y Moda"}, 
	    {nombre: "Centro de Diseño y Manufactura del Cuero"}
	
	    
	]

centros.each do | centro |

	Centro.create(centro) unless Centro.exists?(centro)
		
end


tipo_salidas = [{nombre: "Pedagogica"}, {nombre: "Recreativa"}, {nombre: "Cultural"}, {nombre: "Social"}, {nombre: "Sociocultural"}]

tipo_salidas.each do | tipo_salida |

	TipoSalida.where(tipo_salida).first_or_create		
end


tiporiesgos = [{nombre: "Clase I, de Riesgo Mínimo"}, {nombre: "Clase II, de Riesgo Bajo"}, {nombre: "Clase III, de Riesgo Medio"}, {nombre: "Clase IV, de Riesgo Alto"}, {nombre: "Clase V, de Riesgo Máximo"}]

tiporiesgos.each do | tiporiesgo |

	Tiporiesgo.where(tiporiesgo ).first_or_create		
end


tipoincapacidads = [{nombre: "Incapacidad Laboral Transitoria"}, {nombre: "Invalidez Provisional"}, {nombre: "Invalidez Permanente"}, {nombre: "Incapacidad Permanente Parcial"}, {nombre: "Incapacidad Permanente Total"}, {nombre: "Incapacidad Permanente Absoluta"}, {nombre: "Gran Invalidez"}]

tipoincapacidads.each do | tipoincapacidad |

	Tipoincapacidad.where(tipoincapacidad).first_or_create		
end












