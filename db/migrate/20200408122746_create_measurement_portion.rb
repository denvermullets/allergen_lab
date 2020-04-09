class CreateMeasurementPortion < ActiveRecord::Migration[6.0]
  def change
    create_table :measurement_portions do |t|
      t.integer :portions
    end
  end
end
