json.array!(@cronogramas) do |cronograma|
  json.extract! cronograma, :id, :fecha, :lugar_salida, :ficha_grupo, :tipo_salida_id, :programa, :descripcion
  json.url cronograma_url(cronograma, format: :json)
end
