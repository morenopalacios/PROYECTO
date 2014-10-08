class CreateRiesgos < ActiveRecord::Migration
  def change
    create_table :riesgos do |t|
      t.string :empresa
      t.references :funcionario, index: true
      t.date :fecha
      t.string :areadeseccionopuestodetrabajo
      t.references :tiporiesgo_id
      t.string :factorderiesgo
      t.string :fuentegeneradora
      t.string :efectoconocido
      t.string :numerodeexpuestos
      t.string :tiempo
      t.string :controlesexitentes
      t.string :controlesrecomendados
      t.string :consecuencia
      t.string :exposicion
      t.string :factordeponderacion
      t.string :repercuciondelriesgo

      t.timestamps
    end
  end
end
