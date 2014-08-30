json.array!(@incapacidads) do |incapacidad|
  json.extract! incapacidad, :id, :funcionario_id, :fechainicio, :fechaterminacion, :totaldias, :diasacobrar, :prorroga, :numeroinpacacidad, :esp, :origendelaincapacidad
  json.url incapacidad_url(incapacidad, format: :json)
end
