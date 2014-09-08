class AddTipoenfermedadToEnfermedads < ActiveRecord::Migration
  def change
    add_reference :enfermedads, :tipoenfermedad, index: true
  end
end
