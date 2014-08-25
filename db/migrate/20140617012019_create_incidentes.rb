class CreateIncidentes < ActiveRecord::Migration
  def change
    create_table :incidentes do |t|
      t.references :centro, index: true
      t.string :area_o_proceso
      t.boolean :lugar_de_ocurrencia
      t.date :fecha_del_reporte
      t.string :hora_del_reporte
      t.references :funcionario, index: true
      t.references :personalinvolucrado, index: true
      t.string :otro
      t.string :especifique
      t.string :nombre_completo1
      t.string :email1
      t.string :telefono1
      t.string :nombre_completo2
      t.string :email2
      t.string :telefono2
      t.string :descripcion_del_evento
      t.string :nombre_del_dilenciador
      t.string :nombre_de_lider_de_informe

      t.timestamps
    end
  end
end
