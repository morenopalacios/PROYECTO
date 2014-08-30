class CreatePersonalinvolucrados < ActiveRecord::Migration
  def change
    create_table :personalinvolucrados do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
