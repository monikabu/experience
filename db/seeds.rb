# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

def generate_artists!
  puts "Generating artists..."
  ["Alfons Mucha", "René Jules Lalique"].each do |artist|
    Artist.create!(name: artist)
  end
end

generate_artists!
