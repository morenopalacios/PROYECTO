json.array!(@tipoincapacidads) do |tipoincapacidad|
  json.extract! tipoincapacidad, :id, :nombre
  json.url tipoincapacidad_url(tipoincapacidad, format: :json)
end
