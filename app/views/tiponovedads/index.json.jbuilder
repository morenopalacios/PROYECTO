json.array!(@tiponovedads) do |tiponovedad|
  json.extract! tiponovedad, :id, :nombre
  json.url tiponovedad_url(tiponovedad, format: :json)
end
