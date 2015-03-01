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

  puts "Generating pieces for #{artist_name}"
  pieces.each do |key, piece|
    Piece.create! do |p|
      p.title = piece[:title]
      p.url = piece[:url]
      p.artist_id = artist.id
    end
  end
end

def generate_details!(artist_name, details)
  artist = Artist.find_by(name: artist_name)
  return unless artist

  puts "Generating details for #{artist_name}"
  details.each do |title, detail|
    ArtistDetail.create! do |d|
      d.title = title
      d.detail = detail
      d.artist_id = artist.id
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

# generate details for Alfons Mucha

details = {
  "early years" => "Alphonse Maria Mucha was born in the town of Ivančice,
                    Moravia (the present Czech Republic). Although his
                    singing abilities allowed him to continue his education
                    through high school in the Moravian capital of Brno,
                    drawing had been his main hobby since childhood. He worked
                    at decorative painting jobs in Moravia, mostly painting
                    theatrical scenery. In 1879, he relocated to Vienna to work
                    for a major Viennese theatrical design company, while informally
                    augmenting his artistic education. When a fire destroyed his employer's
                    business during 1881 he returned to Moravia, to do freelance decorative
                    and portrait painting. Count Karl Khuen of Mikulov hired Mucha to
                    decorate Hrušovany Emmahof Castle with murals, and was impressed enough
                    that he agreed to sponsor Mucha's formal training at the
                    Munich Academy of Fine Arts.",
  "death" => "The rising tide of fascism during the late 1930s resulted in Mucha's works and
              his Slavic nationalism being denounced in the press as 'reactionary'. When German
              troops moved into Czechoslovakia during the spring of 1939, Mucha was among the
              first persons to be arrested by the Gestapo. During his interrogation, the aging
              artist became ill with pneumonia. Though released eventually, he may have been
              weakened by this event. He died in Prague on 14 July 1939, due to lung infection,
              and was interred there in the Vyšehrad cemetery.",
  "legacy" => "Although it enjoys great popularity today, at the time when he died, Mucha's style
              was considered outdated. His son, author Jiří Mucha, devoted much of his life to
              writing about him and bringing attention to his artwork. In his own country, the
              new authorities were not interested in Mucha. The Slav Epic was rolled and stored
              for twenty-five years before being shown in Moravsky Krumlov, and a Mucha museum
              opened in Prague, managed by his grandson John Mucha."
}

generate_details!("Alfons Mucha", details)




