class ChangePosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :restaurant_name, :name
    rename_column :posts, :retaurant_type, :restaurant_type
    rename_column :posts, :restaurant_rating, :rating
    add_column :posts, :title, :string
    
  end
end
