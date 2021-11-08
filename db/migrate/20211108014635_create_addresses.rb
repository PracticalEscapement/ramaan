class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :street_address
      t.string :street_address_unit
      t.string :city
      t.string :zipcode
      t.string :state
      t.string :country
      t.string :phone_number
      t.references :restaurant, foreign_key: true 

      t.timestamps
    end
  end
end
