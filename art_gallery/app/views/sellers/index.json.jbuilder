json.array!(@sellers) do |seller|
  json.extract! seller, :id, :type, :organization, :first_name, :last_name, :phone_number, :address, :email, :country_id
  json.url seller_url(seller, format: :json)
end
