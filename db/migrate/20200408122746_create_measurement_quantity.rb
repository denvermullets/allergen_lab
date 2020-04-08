class CreateMeasurementQuantity < ActiveRecord::Migration[6.0]
  def change
    create_table :measurement_quantities do |t|
      t.integer :quantity
    end
  end
end
