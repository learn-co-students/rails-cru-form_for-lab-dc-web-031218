# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
song1 = Song.create(name: "helloworld", genre_id: 1, artist_id: 1)
song2 = Song.create(name: "something", genre_id: 2, artist_id: 5)
song3 = Song.create(name: "peace", genre_id: 3, artist_id: 4)
song4 = Song.create(name: "nothing", genre_id: 4, artist_id: 3)
song5 = Song.create(name: "empty", genre_id: 5, artist_id: 2)
artist1 = Artist.create(name: "Person1", bio: "something1")
artist2 = Artist.create(name: "Person2", bio: "something2")
artist3 = Artist.create(name: "Person3", bio: "something3")
artist4 = Artist.create(name: "Person4", bio: "something4")
artist5 = Artist.create(name: "Person5", bio: "something5")
genre1 = Genre.create(name: "rap")
genre1 = Genre.create(name: "hiphop")
genre1 = Genre.create(name: "country")
genre1 = Genre.create(name: "edm")
genre1 = Genre.create(name: "pop")
