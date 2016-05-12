json.array!(@artists) do |artist|
  json.extract! artist, :id, :first_name, :last_name, :gender, :status, :country_id, :date_of_birth, :background, :phone_number, :email
  json.url artist_url(artist, format: :json)
end
