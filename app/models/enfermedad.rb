class Enfermedad < ActiveRecord::Base   

 belongs_to :tipoenfermedad

	def self.search(search, page)
		where(['upper(fecha) like ?',
		"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("fecha")
   end



  belongs_to :centro
  belongs_to :tipodoc
  belongs_to :funcionario

    validates :funcionario_id, :presence => true 
    validates :tipoenfermedad_id, :presence => true 
    validates :descripcion, :presence => true 
    validates :fecha, :presence => true 
    validates :codigodediagnostico, :presence => true 

<<<<<<< HEAD
     def self.estadistica_x_trimestre(fechIni, fechFin)
      @t1 = Enfermedad.select('count(*) as numero_enfermedades').where('fecha between  ? and  ?',fechIni,fechFin)
=======
    def self.to_csv(options = {})
     CSV.generate(options) do |csv|
     csv << column_names
     all.each do |enfermedad|
      csv << enfermedad.attributes.values_at(*column_names)
    end
  end
end

    def self.estadistica_x_trimestre(fechIni, fechFin)
      @t1 = Enfermedad.select('count(*) as numero_enfermedads').where('fecha  between  ? and  ?',fechIni,fechFin)
>>>>>>> 0a1fabbd5f1a7f5df93de7e0851950dc2f650533
      @t1.pluck('count(*)').first
  end
  
   



def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |enfermedad|
      csv << enfermedad.attributes.values_at(*column_names)
    end
  end
end

<<<<<<< HEAD


end
=======
>>>>>>> 0a1fabbd5f1a7f5df93de7e0851950dc2f650533
