json.array!(@albums) do |album|
  json.extract! album, :id, :recomendacion
  json.url album_url(album, format: :json)
end
