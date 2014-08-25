class AddCampofechaToEnfermedad < ActiveRecord::Migration
  def change
    add_column :enfermedads, :fecha, :date
  end
end
