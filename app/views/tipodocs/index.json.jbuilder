json.array!(@tipodocs) do |tipodoc|
  json.extract! tipodoc, :id, :nombre
  json.url tipodoc_url(tipodoc, format: :json)
end
