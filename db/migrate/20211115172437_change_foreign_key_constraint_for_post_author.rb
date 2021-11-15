class ChangeForeignKeyConstraintForPostAuthor < ActiveRecord::Migration[6.1]
  def change
    remove_foreign_key :posts, :authors
  end
end
