json.array!(@personalinvolucrados) do |personalinvolucrado|
  json.extract! personalinvolucrado, :id, :nombre
  json.url personalinvolucrado_url(personalinvolucrado, format: :json)
end
