class CreateArtworkSellerMaps < ActiveRecord::Migration
  def change
    create_table :artwork_seller_maps do |t|
      t.integer :artwork_id
      t.references :seller, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
