class RemoveForeignKeysFromMaps < ActiveRecord::Migration
  def change
    remove_foreign_key :artwork_artist_maps, :artwork
    remove_foreign_key :artwork_seller_maps, :artwork
    remove_foreign_key :artwork_image_maps,  :artwork
  end
end
