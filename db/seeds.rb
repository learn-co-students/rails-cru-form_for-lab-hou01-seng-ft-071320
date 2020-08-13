# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

elton = Artist.create(name: "Elton John", bio: "Born as Reginald Dwight")
queen = Artist.create(name: "Queen", bio: "Unlike anything else")
rock = Genre.create(name: "Rock")
classic_rock = Genre.create(name: "Classic Rock")
your_song = Song.create(name: "Your Song", artist_id: elton.id, genre_id: rock.id)
rocket = Song.create(name: "Rocketman", artist_id: elton.id, genre_id: rock.id)
we = Song.create(name: "We Will Rock You", artist_id: queen.id, genre_id: classic_rock.id)
