class CreateCronogramas < ActiveRecord::Migration
  def change
    create_table :cronogramas do |t|
      t.date :fecha
      t.string :lugar_salida
      t.string :ficha_grupo
      t.references :tipo_salida, index: true
      t.string :programa
      t.string :descripcion

      t.timestamps
    end
  end
end
