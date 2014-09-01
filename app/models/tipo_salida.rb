class TipoSalida < ActiveRecord::Base
  has_many :cronogramas

   validates :nombre, :presence => true
   validates :nombre, uniqueness: { message: "No se puede Repetir" } 
   validates :nombre, length: { minimum: 5, maximum: 30 }
	

	def self.search(search, page) where(['upper(nombre) like ?', 
     "%#{search}%".upcase]).paginate(page: page, per_page: 2).order("nombre") 
   end
end
