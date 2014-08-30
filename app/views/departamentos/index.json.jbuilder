json.array!(@departamentos) do |departamento|
  json.extract! departamento, :id, :nombre
  json.url departamento_url(departamento, format: :json)
end
