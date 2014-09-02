class CreateAlbums < ActiveRecord::Migration
  def change
    create_table :albums do |t|
      t.text :recomendacion

      t.timestamps
    end
    add_attachment :albums, :image
  end
end
