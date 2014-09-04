class CreateTiporiesgos < ActiveRecord::Migration
  def change
    create_table :tiporiesgos do |t|
      t.string :nombre

      t.timestamps
    end
  end
end
