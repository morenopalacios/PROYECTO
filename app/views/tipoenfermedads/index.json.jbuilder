json.array!(@tipoenfermedads) do |tipoenfermedad|
  json.extract! tipoenfermedad, :id, :nombre
  json.url tipoenfermedad_url(tipoenfermedad, format: :json)
end
