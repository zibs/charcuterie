# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


words = JSON.parse(File.read("#{Rails.root}/words.json"))
words.map do |word|
  name = word["WORD"].strip.downcase.titleize
  definition = word["DEFINITION"].delete("[]").gsub('"', '').gsub("'", '').gsub("’", '').gsub("‘", '').strip.downcase.capitalize

  Word.create(name: name, definition: definition )
end
