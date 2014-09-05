class CreateTipoaccidentes < ActiveRecord::Migration
  def change
    create_table :tipoaccidentes do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
