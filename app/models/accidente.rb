class Accidente < ActiveRecord::Base
	def self.search(search, page)
		where(['upper(fchAc) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("fchAc")
	end
  belongs_to :tipodoc
  belongs_to :departamento
  belongs_to :municipio
  belongs_to :funcionario

  # Validar que los atributos sean obligatorios
validates :diligenciador, :presence => true
validates :eps, :presence => true
validates :afp, :presence => true
validates :arl, :presence => true
validates :documento, :presence => true
validates :tipodoc_id, :presence => true
validates :tipo_de_vinculacion, :presence => true
validates :razon_social, :presence => true
validates :direccion_sede_principal, :presence => true
validates :direccion_reportada, :presence => true
validates :telefono_reportado, :presence => true
validates :actividad_economica_sede_principal, :presence => true
validates :codigo, :presence => true
validates :telefono_sede_principal, :presence => true
validates :fax_sede_principal, :presence => true
validates :email_sede_principal, :presence => true
validates :departamento_id, :presence => true
validates :municipio_id, :presence => true
validates :zona, :presence => true
validates :actividad_economica_centro_trabajo, :presence => true
validates :direccion_centro_trabajo, :presence => true
validates :telefono_ct, :presence => true
validates :fax_ct, :presence => true
validates :email_ct, :presence => true
validates :departamento1, :presence => true
validates :municipio1, :presence => true
validates :zona1, :presence => true
#validates :funcionario_id, :presence => true
validates :fchAc, :presence => true
validates :hora_del_accidente, :presence => true
validates :dia_de_la_semana, :presence => true
validates :jornada_en_que_sucede, :presence => true
#validates :realiza_su_labor, :presence => true
validates :ocupacion_no_habitual, :presence => true
validates :tiempo_laborado, :presence => true
validates :lugar_donde_ocurrio_el_at, :presence => true
validates :mecanismo_o_formato_del_at, :presence => true
validates :tipo_de_lesion, :presence => true
validates :sitio, :presence => true
#validates :tipo_de_accidente, :presence => true
validates :parte_del_cuerpo_afectado, :presence => true
validates :agente_del_accidente, :presence => true
validates :departamento2, :presence => true
validates :municipio2, :presence => true
validates :zona2, :presence => true
#validates :mortal, :presence => true
validates :fecha_mortal, :presence => true
validates :descripcion_del_at, :presence => true
#validates :hubo_personas_que_presenciaron_el_accidente, :presence => true
#validates :testigo1, :presence => true
#validates :tipodoc1, :presence => true
#validates :documento1, :presence => true
#validates :testigo2, :presence => true
#validates :tipodoc2, :presence => true
#validates :documento2, :presence => true
validates :responsable_informe, :presence => true
validates :tipodoc3, :presence => true
validates :documento3, :presence => true

#validar un atributo booleano
#validates :genero, inclusion: [true, false]

# validar formato de un email
validates :email_sede_principal, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
message: 'Formato no valido' }

validates :email_ct, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i,
message: 'Formato no valido' }

   def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |accidente|
        csv << accidente.attributes.values_at(*column_names)
      end
    end
  end



   def self.estadistica_x_trimestre(fechIni, fechFin)
        @t1 = Accidente.select('count(*) as numero_accidentes').where('fchAc between  ? and  ?',fechIni,fechFin)
        @t1.pluck('count(*)').first
    end

end

