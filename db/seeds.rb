# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Place.destroy_all
Entry.destroy_all

new_places = [
    {name: "Mexico City"}, 
    {name: "Charleston"}, 
    {name: "Beijing"}, 
    {name: "Amsterdam"}
]
Place.create(new_places)

mexico = Place.find_by({ "name" => "Mexico City" })
new_entry = [
    {title: "Delicious Tacos", description: "I ate pollo tacos", occurred_on: "2022-01-01", place_id: mexico.id},
    {title: "Lisa and Jim's Wedding", description: "Wedding was beautiful", occurred_on: "2022-01-01", place_id: mexico.id},
    {title: "Ate tacos again", description: "I ate al pastor tacos", occurred_on: "2022-01-01", place_id: mexico.id}
]
Entry.create(new_entry)
