json.array!(@tipoaccidentes) do |tipoaccidente|
  json.extract! tipoaccidente, :id, :nombre
  json.url tipoaccidente_url(tipoaccidente, format: :json)
end
