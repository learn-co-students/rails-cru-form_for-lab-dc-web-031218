# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

30.times do
  a = Artist.find_or_create_by(name:Faker::RockBand.name, bio: "#{Faker::Demographic.marital_status} #{Faker::Demographic.sex} #{Faker::Demographic.demonym}" )
  g = Genre.find_or_create_by(name: Faker::Music.instrument)
  21.times do
    s = Song.find_or_create_by(name: Faker::Dune.saying.truncate(25, separator: ' ', omission: ''))
    a.songs << s
    g.songs << s
  end
end
