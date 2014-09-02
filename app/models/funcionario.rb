class Funcionario < ActiveRecord::Base


def self.search(search, page)
where(['upper(nombres) like ?',
"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("nombres")
end





  belongs_to :tipodoc
  belongs_to :centro


  # validar un atributo booleano 
  validates :genero, inclusion: [true, false] 
  # Validar que los atributos sean obligatorios 
  validates :nombres, :presence => true 
  validates :apellidos, :presence => true 
  validates :tipodoc_id, :presence => true 
  validates :identificacion, :presence => true 
  validates :lugar_de_expedicion, :presence => true 
  validates :telefono, :presence => true 
  validates :mail, :presence => true 
	validates :centro_id, :presence => true 
	validates :codigo, :presence => true 
	validates :eps , :presence => true 
	validates :afp , :presence => true 
	validates :arl , :presence => true 
	validates :lugar_de_nacimiento, :presence => true 
	validates :fecha_de_nacimiento , :presence => true 
	validates :edad , :presence => true 
	validates :area , :presence => true 
	validates :cargo, :presence => true 
	validates :fecha_de_ingreso, :presence => true 
	validates :antiguedad , :presence => true 
  validates :funciones_principales , :presence => true 
    
     # validar que un atributos unicos
    validates :identificacion, uniqueness: { message: "No se puede Repetir" }
    validates :mail,
    uniqueness: { message: "No se puede Repetir" }
end
