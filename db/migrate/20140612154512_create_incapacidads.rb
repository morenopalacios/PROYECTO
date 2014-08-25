class CreateIncapacidads < ActiveRecord::Migration
  def change
    create_table :incapacidads do |t|
      t.references :funcionario, index: true
      t.date :fechainicio
      t.date :fechaterminacion
      t.string :totaldias
      t.string :diasacobrar
      t.string :prorroga
      t.string :numeroinpacacidad
      t.string :esp
      t.string :origendelaincapacidad

      t.timestamps
    end
  end
end
