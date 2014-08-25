class AddCamponuevoToEnfermedad < ActiveRecord::Migration
  def change
    add_column :enfermedads, :descripcion, :string
  end
end
