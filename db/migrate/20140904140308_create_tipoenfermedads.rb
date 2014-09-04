class CreateTipoenfermedads < ActiveRecord::Migration
  def change
    create_table :tipoenfermedads do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
