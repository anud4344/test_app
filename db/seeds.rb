# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


 case Rails.env

 when "development"
    puts "Seeding DEVELOPMENT.."
    Book.destroy_all
    Book.create!([
        {title: "The life of a turtle"},
        {title: "The mirror, the lion and the audacity of the little dog"},
        {title: "Origami for cats"},
        {title: "The weight of a hundred kilograms"}
])

 when "test"
    puts "Seeding TEST.."
    Book.destroy_all
    Book.create!([
        {title: "Life of Pi"},
        {title: "The Bible"},
        {title: "Gifted Hands"},
        {title: "Harry Potter"}
])
 
when "production"
    puts "Seeding PRODUCTION.."
    Book.destroy_all
    Book.create!([
        {title: "Life of Mahatma Gandhi"},
        {title: "1984"},
        {title: "Tintin"},
        {title: "National Geographic Magazine"}
])

end