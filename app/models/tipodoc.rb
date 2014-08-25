class Tipodoc < ActiveRecord::Base
has_many :funcionario

 validates :nombre, :presence => true
end
