# require 'csv-mapper'

class Seller < ActiveRecord::Base
  has_one :country
  has_many :artworks, :through => :artwork_seller_map

  # enum type: [:Person, :Organization]
  # validate :seller_type, inclusion: { in: Seller.type.keys }
end

# include CsvMapper
# results = import('data/seller.csv') do
#   map_to Seller # Map to the Seller ActiveRecord class (defined above) instead of the default OpenStruct.
#   after_row lambda{|row, seller| seller.save }  # Call this lambda and save each record after it's parsed.

#   start_at_row 1
#   [seller_type, organization_name, first_name, last_name, phone_number, address, email, country_id]
# end
