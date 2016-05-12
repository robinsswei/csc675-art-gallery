json.array!(@artwork_image_maps) do |artwork_image_map|
  json.extract! artwork_image_map, :id, :artwork, :image_id
  json.url artwork_image_map_url(artwork_image_map, format: :json)
end
