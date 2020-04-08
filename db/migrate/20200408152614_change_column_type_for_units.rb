class ChangeColumnTypeForUnits < ActiveRecord::Migration[6.0]
  def change
    rename_column :measurement_units, :type, :desc
  end
end
