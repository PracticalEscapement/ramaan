class RemoveRestaurantAttrFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :name
    remove_column :posts, :restaurant_type
    remove_column :posts, :image_url
    remove_column :posts, :rating
    remove_column :posts, :price
  end
end
