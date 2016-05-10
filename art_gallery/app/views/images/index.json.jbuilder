json.array!(@images) do |image|
  json.extract! image, :id, :src
  json.url image_url(image, format: :json)
end
