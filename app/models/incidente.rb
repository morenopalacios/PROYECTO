class Incidente < ActiveRecord::Base

 belongs_to :tipoincidente

  def self.search(search, page)

where(['upper(fecha_del_reporte) like ?',
"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("fecha_del_reporte")
end


  belongs_to :centro
  belongs_to :funcionario
  belongs_to :personalinvolucrado

  validates :tipoincidente_id, :presence => true 
  # validar un atributo booleano 
   validates :lugar_de_ocurrencia, inclusion: [true, false] 
  # Validar que los atributos sean obligatorios 
   validates :funcionario_id, :presence => true 
   validates :area_o_proceso, :presence => true 
   validates :fecha_del_reporte, :presence => true 
   validates :hora_del_reporte, :presence => true 
   validates :personalinvolucrado, :presence => true 
   validates :especifique, :presence => true 
   validates :descripcion_del_evento , :presence => true 
   validates :nombre_del_dilenciador , :presence => true 
   validates :nombre_de_lider_de_informe, :presence => true

   def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |incidente|
      csv << Incidente.attributes.values_at(*column_names)
    end
  end
end

 def self.estadistica_x_trimestre(fechIni, fechFin)
      @t1 = Incidente.select('count(*) as numero_incidentes').where('fecha_del_reporte  between  ? and  ?',fechIni,fechFin)
      @t1.pluck('count(*)').first
  end

end
