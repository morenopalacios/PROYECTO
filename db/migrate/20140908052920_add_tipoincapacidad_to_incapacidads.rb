class AddTipoincapacidadToIncapacidads < ActiveRecord::Migration
  def change
    add_reference :incapacidads, :tipoincapacidad, index: true
  end
end
