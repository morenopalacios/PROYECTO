class Personalinvolucrado < ActiveRecord::Base
has_many :incidentes

validates :nombre, :presence => true
end
