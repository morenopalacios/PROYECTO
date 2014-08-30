class Enfermedad < ActiveRecord::Base   

	def self.search(search, page)
		where(['upper(fecha) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("fecha")
   end



  belongs_to :centro
  belongs_to :tipodoc
  belongs_to :funcionario

    validates :funcionario_id, :presence => true 
    validates :descripcion, :presence => true 
    validates :fecha, :presence => true 
    validates :codigodediagnostico, :presence => true 
   
end
