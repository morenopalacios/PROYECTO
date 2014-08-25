class AddCamposnuevoToFuncionario < ActiveRecord::Migration
  def change
    add_column :funcionarios, :genero, :boolean
  end
end
