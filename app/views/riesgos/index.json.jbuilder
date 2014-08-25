json.array!(@riesgos) do |riesgo|
  json.extract! riesgo, :id, :empresa, :funcionario_id, :fecha, :areadeseccionopuestodetrabajo, :clasederiesgo, :factorderiesgo, :fuentegeneradora, :efectoconocido, :numerodeexpuestos, :tiempo, :controlesexitentes, :controlesrecomendados, :consecuencia, :exposicion, :factordeponderacion, :repercuciondelriesgo
  json.url riesgo_url(riesgo, format: :json)
end
