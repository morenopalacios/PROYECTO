json.array!(@galeria) do |galerium|
  json.extract! galerium, :id, :recomendacion
  json.url galerium_url(galerium, format: :json)
end
