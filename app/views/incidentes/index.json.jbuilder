json.array!(@incidentes) do |incidente|
  json.extract! incidente, :id, :centro_id, :area_o_proceso, :lugar_de_ocurrencia, :fecha_del_reporte, :hora_del_reporte, :funcionario_id, :personalinvolucrado_id, :otro, :especifique, :nombre_completo1, :email1, :telefono1, :nombre_completo2, :email2, :telefono2, :descripcion_del_evento, :nombre_del_dilenciador, :nombre_de_lider_de_informe
  json.url incidente_url(incidente, format: :json)
end
