json.array!(@sellers) do |seller|
  json.extract! seller, :id, :seller_type, :organization_name, :first_name, :last_name, :address, :email, :country_id
  json.url seller_url(seller, format: :json)
end
