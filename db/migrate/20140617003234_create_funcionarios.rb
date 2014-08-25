class CreateFuncionarios < ActiveRecord::Migration
  def change
    create_table :funcionarios do |t|
      t.string :nombres
      t.string :apellidos
      t.references :tipodoc, index: true
      t.string :identificacion
      t.string :telefono
      t.string :mail
      t.references :centro, index: true
      t.string :codigo
      t.string :eps
      t.string :afp
      t.string :arl
      t.string :lugar_de_expedicion
      t.string :lugar_de_nacimiento
      t.date :fecha_de_nacimiento
      t.string :edad
      t.string :area
      t.date :fecha_de_ingreso
      t.string :antiguedad
      t.string :funciones_principales

      t.timestamps
    end
  end
end
