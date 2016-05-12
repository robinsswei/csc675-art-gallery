json.array!(@artworks) do |artwork|
  json.extract! artwork, :id, :title, :price, :date, :description, :period, :edition, :medium, :size, :authentic, :stock, :subject, :artwork_artist_map_id, :artwork_seller_map_id, :artwork_image_map_id
  json.url artwork_url(artwork, format: :json)
end
