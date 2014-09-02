class CreateTipoSalidas < ActiveRecord::Migration
  def change
    create_table :tipo_salidas do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
