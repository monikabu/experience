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

def generate_pieces!(artist_name, pieces)
  artist = Artist.find_by(name: artist_name)
  return unless artist

  puts "Generating pieces..."
  pieces.each do |key, piece|
    Piece.create! do |p|
      p.title = piece[:title]
      p.url = piece[:url]
      p.artist_id = artist.id
    end
  end
end

# generate pieces for Alfons Mucha
pieces = {
  first: {
    title: "moravian teachers choir",
    url: "http://www.illusionsgallery.com/Moravian-teachers-choir-L.jpg"
  },
  second: {
    title: "savonnerie de bagnolet",
    url: "http://upload.wikimedia.org/wikipedia/commons/8/8d/Savonnerie_de_bagnolet_Alfons_Mucha.jpg"
  },
  third: {
    title: "princezna hyacinta",
    url:"http://bertc.com/subthree/i6/images/princezna_Hyacinta.jpg"
  }
}

generate_pieces!("Alfons Mucha",pieces)




