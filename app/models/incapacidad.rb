class Incapacidad < ActiveRecord::Base


	def self.search(search, page)
		where(['upper(fechainicio) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("fechainicio")
    end


  belongs_to :funcionario

   validates :funcionario_id, :presence => true 
   validates :fechainicio, :presence => true 
   validates :fechaterminacion, :presence => true 
   validates :totaldias, :presence => true 
   validates :diasacobrar, :presence => true 
   validates :prorroga, :presence => true 
   validates :numeroinpacacidad, :presence => true 
   validates :origendelaincapacidad, :presence => true 
   
end
