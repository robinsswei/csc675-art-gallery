class UpdateMaps < ActiveRecord::Migration
  def change
  	add_foreign_key :artwork_artist_maps, :artworks, column: :artwork_id
  	add_foreign_key :artwork_seller_maps, :artworks, column: :artwork_id
  	add_foreign_key :artwork_image_maps, :artworks, column: :artwork_id
  end
end
