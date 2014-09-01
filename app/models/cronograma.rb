class Cronograma < ActiveRecord::Base
  belongs_to :tipo_salida

  validates :fecha, :presence => true
	validates :lugar_salida, :presence => true
	validates :ficha_grupo , :presence => true
  validates :tipo_salida, :presence => true
	validates :programa, :presence => true
	validates :descripcion, :presence => true

   
   validates :ficha_grupo, length: { minimum: 5, maximum: 30 } 
   validates :descripcion, length: { minimum: 5, maximum: 50 }
  



   def self.search(search, page) where(['upper(fecha) like ?', 
     "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("fecha") 
   end 
end
