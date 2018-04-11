# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
genre = Genre.create([{name: "pop"}])
artist = Artist.create([{name: "Britney", bio: "singer"}])
song = Song.create([{name: "toxic", genre_id: 1, artist_id: 1}])
