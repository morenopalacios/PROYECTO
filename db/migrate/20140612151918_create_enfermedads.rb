class CreateEnfermedads < ActiveRecord::Migration
  def change
    create_table :enfermedads do |t|
      t.references :centro, index: true
      t.references :tipodoc, index: true
      t.string :documento
      t.references :funcionario, index: true
      t.string :codigodediagnostico

      t.timestamps
    end
  end
end
