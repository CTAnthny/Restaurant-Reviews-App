class AddDescriptionToRestaurants < ActiveRecord::Migration[5.0]
  def change
    add_column :restaurants, :description, :text, null: false
  end
end
