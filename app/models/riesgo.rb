class Riesgo < ActiveRecord::Base

    def self.search(search, page)
    where(['upper(empresa) like ?',
    "%#{search}%".upcase]).paginate(page: page, per_page: 5).order("empresa")
    end
    
  belongs_to :funcionario
  has_many :tiporiesgos 

    
    validates :empresa, :presence => true 
    validates :funcionario_id, :presence => true 
    validates :tiporiesgo_id, :presence => true 
    validates :fecha, :presence => true 
    validates :areadeseccionopuestodetrabajo, :presence => true 
    validates :factorderiesgo, :presence => true 
    validates :fuentegeneradora, :presence => true 
    validates :efectoconocido, :presence => true 
    validates :numerodeexpuestos , :presence => true 
    validates :tiempo, :presence => true 
    validates :controlesexitentes, :presence => true 
    validates :controlesrecomendados, :presence => true
    validates :consecuencia, :presence => true
    validates :exposicion, :presence => true 
    validates :factordeponderacion,:presence => true
    validates :repercuciondelriesgo, :presence => true 


    def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv << column_names
    all.each do |riesgo|
      csv << riesgo.attributes.values_at(*column_names)
    end
  end
end



   def self.estadistica_x_trimestre(fechIni, fechFin)
      @t1 = Riesgo.select('count(*) as numero_riesgos').where('fecha  between  ? and  ?',fechIni,fechFin)
      @t1.pluck('count(*)').first
  end
  
end
