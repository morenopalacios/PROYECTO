json.array!(@centros) do |centro|
  json.extract! centro, :id, :nombre
  json.url centro_url(centro, format: :json)
end
