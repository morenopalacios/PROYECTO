class CreateGaleria < ActiveRecord::Migration
  def change
    create_table :galeria do |t|
      t.text :recomendacion

      t.timestamps
    end
    add_attachment :galeria, :image
  end
end
