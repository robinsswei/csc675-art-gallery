class CreateArtworkArtistMaps < ActiveRecord::Migration
  def change
    create_table :artwork_artist_maps do |t|
      t.integer :artwork_id
      t.references :artist, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
