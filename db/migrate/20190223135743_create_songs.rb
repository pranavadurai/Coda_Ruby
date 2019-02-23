class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :artists
      t.string :danceability
      t.string :energy
      t.string :key
      t.string :loudness
      t.integer :mode
      t.string :speechiness
      t.string :acousticness
      t.string :instrumentalness
      t.string :liveness
      t.string :valence
      t.string :tempo
      t.string :duration_ms
      t.integer :time_signature
      t.integer :rank

      t.timestamps
    end
  end
end
