class AddTipoaccidenteToAccidentes < ActiveRecord::Migration
  def change
    add_reference :accidentes, :tipoaccidente, index: true
  end
end
