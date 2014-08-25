class Riesgo < ActiveRecord::Base

def self.search(search, page)
where(['upper(empresa) like ?',
"%#{search}%".upcase]).paginate(page: page, per_page: 5).order("empresa")
end
    
  belongs_to :funcionario

    
    validates :empresa, :presence => true 
    validates :funcionario_id, :presence => true 
    validates :fecha, :presence => true 
    validates :areadeseccionopuestodetrabajo, :presence => true 
    validates :clasederiesgo, :presence => true 
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
end
