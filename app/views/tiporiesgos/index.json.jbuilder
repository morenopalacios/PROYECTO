json.array!(@tiporiesgos) do |tiporiesgo|
  json.extract! tiporiesgo, :id, :nombre
  json.url tiporiesgo_url(tiporiesgo, format: :json)
end
