class Centro < ActiveRecord::Base

# Validar que los atributos sean obligatorios
 validates :nombre, :presence => true


has_many :funcionario
has_many :incidentes
end


