class AddRestaurantIdToPosts < ActiveRecord::Migration[6.1]
  def change
    add_reference :posts, :restaurant, foreign_key: true
  end
end
