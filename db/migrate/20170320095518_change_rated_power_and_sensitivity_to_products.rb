class ChangeRatedPowerAndSensitivityToProducts < ActiveRecord::Migration[5.0]
  def change
  	change_column :products, :rated_power, :decimal, precision: 3, scale: 1
  	change_column :products, :sensitivity, :decimal, precision: 3, scale: 1
  end
end
