# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

csv_text = File.read(Rails.root.join('lib','seeds','Song.csv'))
csv = CSV.parse(csv_text, :headers => true, :encoding => 'ISO-8859-1')
csv.each do |row|
  t = Song.new
  t.name = row['name']
  t.artists = row['artists']
  t.danceability = row['danceability']
  t.energy = row['energy']
  t.key = row['key']
  t.loudness = row['loudness']
  t.mode = row['mode']
  t.speechiness = row['speechiness']
  t.acousticness = row['acousticness']
  t.instrumentalness = row['instrumentalness']
  t.liveness = row['liveness']
  t.valence = row['valence']
  t.tempo = row['tempo']
  t.duration_ms = row['duration_ms']
  t.time_signature = row['time_signature']
  t.rank = row['rank']
  t.save
  puts "#{t.name} Saved"
end
