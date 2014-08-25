class AddCampocargoToFuncionario < ActiveRecord::Migration
  def change
    add_column :funcionarios, :cargo, :string
  end
end
