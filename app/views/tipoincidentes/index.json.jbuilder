json.array!(@tipoincidentes) do |tipoincidente|
  json.extract! tipoincidente, :id, :nombre
  json.url tipoincidente_url(tipoincidente, format: :json)
end
