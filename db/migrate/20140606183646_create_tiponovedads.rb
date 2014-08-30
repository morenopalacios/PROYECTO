class CreateTiponovedads < ActiveRecord::Migration
  def change
    create_table :tiponovedads do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
