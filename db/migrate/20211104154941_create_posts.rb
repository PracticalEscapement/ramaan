class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.string :restaurant_name, null: false
      t.string :retaurant_type
      t.string :image_url
      t.float :restaurant_rating
      t.integer :price
      t.text :review
      t.timestamps
    end
  end
end
