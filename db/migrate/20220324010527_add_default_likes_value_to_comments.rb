class AddDefaultLikesValueToComments < ActiveRecord::Migration[6.1]
  def change
    change_column :comments, :likes, :integer, default: 0
  end
end
