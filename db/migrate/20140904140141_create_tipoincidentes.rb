class CreateTipoincidentes < ActiveRecord::Migration
  def change
    create_table :tipoincidentes do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
