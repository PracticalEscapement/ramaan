# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Default Admin User

User.create(
  first_name: 'mike_admin', last_name: 'moradi_admin', email: 'mike_admin@dev.com', password: '123456', is_admin: true)

restaurants = Restaurant.create([
  {name: "timi", restaurant_type: "japanese", image_url: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAV0A...", rating: 8.0, price: 10000},
  {name: "portofino", restaurant_type: "italian", image_url: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD...", rating: 8.0, price: 5000}, 
  {name: "al mar", restaurant_type: "italian", image_url: "data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD...", rating: 9.0, price: 20000},
])

#395 New York Ave, NY 11743, (631) 673-1200
#3355 Hempstead Turnpike, NY 11756, (516) 473-0320
#424 Jericho tpk, NY 11791, (516) 496-8883