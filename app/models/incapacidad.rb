class Incapacidad < ActiveRecord::Base

	def self.search(search, page)
		where(['upper(fechainicio) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("fechainicio")
    end


  belongs_to :funcionario
  has_many :tipoincapacidad

   validates :funcionario_id, :presence => true 
   validates :fechainicio, :presence => true 
   validates :fechaterminacion, :presence => true 
   validates :totaldias, :presence => true 
   validates :diasacobrar, :presence => true 
   validates :prorroga, :presence => true 
   validates :numeroinpacacidad, :presence => true 
   validates :origendelaincapacidad, :presence => true 

   def self.estadistica_x_trimestre(fechIni, fechFin)
      @t1 = Incapacidad.select('count(*) as numero_incapacidads').where('fechainicio between  ? and  ?',fechIni,fechFin)
      @t1.pluck('count(*)').first
  end




def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |incapacidad|
      csv << incapacidad.attributes.values_at(*column_names)
    end
  end
end


   
end
