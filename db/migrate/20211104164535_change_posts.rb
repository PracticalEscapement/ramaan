class ChangePosts < ActiveRecord::Migration[6.1]
  def change
    rename_column :posts, :retaurant_type, :restaurant_type
  end
end
