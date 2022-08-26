# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database ..."
Article.destroy_all
Contact.destroy_all

puts "Database clean!"
puts "Creaing new articles ..."

@articles = [
  { name: "Article 1", price: 20 },
  { name: "Article 2", price: 50 },
  { name: "Article 3", price: 30 },
]

@articles.each do |article|
  article = Article.new(article)
  article.save
  puts "Created #{article.name}."
end

puts "Finished!"
