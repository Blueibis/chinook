## README

[See instructions in Alexa.](https://alexa.bitmaker.co/cohorts/67/assignments/2038/latest)

Intro to ActiveRecord querys
part1)
Find the albums recorded by the artist Queen.
#  Album.where("artist_id = ?", Artist.find_by(name: 'Queen'))

Count how many tracks belong to the media type "Protected MPEG-4 video file".
#  Track.where("media_type_id = ?", MediaType.find_by(name: 'Protected MPEG-4 #video file')).count

Find the genre with the name "Hip Hop/Rap".
#  Genre.find_by(name: 'Hip Hop/Rap')

Count how many tracks belong to the "Hip Hop/Rap" genre
#  Track.where("genre_id = ?", Genre.find_by(name: 'Hip Hop/Rap')).count

Find the total amount of time required to listen to all the tracks in the database.
#  Track.sum(:milliseconds)

Find the highest price of any track that has the media type "MPEG audio file".
#  Track.where("media_type_id = ?", MediaType.find_by(name: 'MPEG audio file')).order(unit_price: :desc).first.unit_price


Find the name of the most expensive track that has the media type "MPEG audio file".
#  Track.where("media_type_id = ?", MediaType.find_by(name: 'MPEG audio file')).order(unit_price: :desc).first.name

Find the 2 oldest artists.
#  Artist.order(created_at: :asc).first(2)
<!-- .each do |artist| puts artist.name end -->

Find the least expensive track that has the genre "Electronica/Dance".
#  Artist.order(created_at: :asc).first(2).each do |artist| puts artist.name end

Find all "MPEG autio file" tracks in the genre "Electronica/Dance".
#  Track.where("media_type_id = ? AND genre_id = ?", MediaType.find_by(name: 'MPEG audio file'), Genre.find_by(name: 'Electronica/Dance'))
---STRETCH---
Find all the albums whose titles start with B.
# Album.where("title LIKE ?", 'B%')
Find the all the artists whose names start with A.
#  Artist.where("name LIKE ?", "A%")
