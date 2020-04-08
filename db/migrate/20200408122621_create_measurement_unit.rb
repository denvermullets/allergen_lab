class CreateMeasurementUnit < ActiveRecord::Migration[6.0]
  def change
    create_table :measurement_units do |t|
      t.string :type
    end
  end
end
