class AddTipoincidenteToIncidentes < ActiveRecord::Migration
  def change
    add_reference :incidentes, :tipoincidente, index: true
  end
end
