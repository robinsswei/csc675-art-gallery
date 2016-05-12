json.array!(@artwork_seller_maps) do |artwork_seller_map|
  json.extract! artwork_seller_map, :id, :artwork, :seller_id
  json.url artwork_seller_map_url(artwork_seller_map, format: :json)
end
