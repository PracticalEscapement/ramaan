class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :restaurant_type
      t.string :image_url
      t.float :rating
      t.integer :price

      t.timestamps
    end
  end
end
