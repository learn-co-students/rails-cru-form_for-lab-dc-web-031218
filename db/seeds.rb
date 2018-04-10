# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
noah_gundersen = Artist.create(name: "Noah Gundersen", bio: "Dark, sad tunes.")
dermot_kennedy = Artist.create(name: "Dermot Kennedy", bio: "Edgy, chill tunes.")
acoustic = Genre.create(name: "Acoustic")
alternative = Genre.create(name: "Alternative")
first_defeat = Song.create(name: "First Defeat")
a_closeness = Song.create(name: "A closeness")
