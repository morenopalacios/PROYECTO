class CreateTipoincapacidads < ActiveRecord::Migration
  def change
    create_table :tipoincapacidads do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
