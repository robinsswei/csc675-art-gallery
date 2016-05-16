class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :title
      t.decimal :price
      t.date :date
      t.string :description
      t.string :period
      t.integer :edition
      t.string :medium
      t.string :size
      t.boolean :authentic
      t.integer :stock
      t.string :subject
      t.references :artwork_artist_map, index: true, foreign_key: true
      t.references :artwork_seller_map, index: true, foreign_key: true
      t.references :artwork_image_map, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
