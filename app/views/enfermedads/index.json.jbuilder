json.array!(@enfermedads) do |enfermedad|
  json.extract! enfermedad, :id, :centro_id, :tipodoc_id, :documento, :funcionario_id, :codigodediagnostico
  json.url enfermedad_url(enfermedad, format: :json)
end
