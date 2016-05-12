json.array!(@artwork_artist_maps) do |artwork_artist_map|
  json.extract! artwork_artist_map, :id, :artwork, :artist_id
  json.url artwork_artist_map_url(artwork_artist_map, format: :json)
end
