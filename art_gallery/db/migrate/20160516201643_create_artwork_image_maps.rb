class CreateArtworkImageMaps < ActiveRecord::Migration
  def change
    create_table :artwork_image_maps do |t|
      t.integer :artwork_id
      t.references :image, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
