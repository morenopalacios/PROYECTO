json.array!(@tipo_salidas) do |tipo_salida|
  json.extract! tipo_salida, :id, :nombre
  json.url tipo_salida_url(tipo_salida, format: :json)
end
