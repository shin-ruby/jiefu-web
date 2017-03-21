class AddRatedPowerToSearches < ActiveRecord::Migration[5.0]
  def change
    add_column :searches, :min_rated_power, :decimal, precision: 3, scale: 1
    add_column :searches, :max_rated_power, :decimal, precision: 3, scale: 1

    add_column :searches, :min_sensitivity, :decimal, precision: 3, scale: 1
    add_column :searches, :max_sensitivity, :decimal, precision: 3, scale: 1

    add_column :searches, :min_size_length, :decimal, precision: 4, scale: 1
    add_column :searches, :max_size_length, :decimal, precision: 4, scale: 1

    add_column :searches, :min_size_width, :decimal, precision: 4, scale: 1
    add_column :searches, :max_size_width, :decimal, precision: 4, scale: 1

    add_column :searches, :min_size_height, :decimal, precision: 4, scale: 1
    add_column :searches, :max_size_height, :decimal, precision: 4, scale: 1

    

  end
end
