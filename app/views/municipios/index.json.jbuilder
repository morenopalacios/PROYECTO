json.array!(@municipios) do |municipio|
  json.extract! municipio, :id, :nombre
  json.url municipio_url(municipio, format: :json)
end
