class AddTestigo1ToAccidente < ActiveRecord::Migration
  def change
    add_column :accidentes, :testigo1, :string
  end
end
