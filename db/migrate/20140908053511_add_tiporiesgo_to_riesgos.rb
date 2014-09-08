class AddTiporiesgoToRiesgos < ActiveRecord::Migration
  def change
    add_reference :riesgos, :tiporiesgo, index: true
  end
end
