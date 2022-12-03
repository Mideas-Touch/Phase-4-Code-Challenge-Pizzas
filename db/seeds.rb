# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Restaurant.destroy_all
Pizza.destroy_all
RestaurantPizza.destroy_all

r1 = Restaurant.create(name: "r1", address: "24, NY")
r2 = Restaurant.create(name: "r2", address: "12, OH")
r3 = Restaurant.create(name: "r3", address: "30, MY")

p1 = Pizza.create(name: "p1", ingredients: "Dough, Tomato Sauce, Cheese")
p2 = Pizza.create(name: "p2", "ingredients": "Dough, Tomato Sauce, Cheese, Pepperoni")
p3 = Pizza.create(name: "p3", "ingredients": "Dough, Tomato Sauce, Cheese, Pineapple")

rp1 = RestaurantPizza.create(pizza_id: p1.id, restaurant_id: r1.id, price: 10)
rp2 = RestaurantPizza.create(pizza_id: p2.id, restaurant_id: r1.id, price: 15)
rp3 = RestaurantPizza.create(pizza_id: p3.id, restaurant_id: r2.id, price: 12)
rp4 = RestaurantPizza.create(pizza_id: p1.id, restaurant_id: r3.id, price: 11)