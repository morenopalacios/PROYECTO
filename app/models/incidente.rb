class Incidente < ActiveRecord::Base

  def self.search(search, page)
where(['upper(nombre_de_lider_de_informe) like ?',
"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombre_de_lider_de_informe")
end


  belongs_to :centro
  belongs_to :funcionario
  belongs_to :personalinvolucrado


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


end
