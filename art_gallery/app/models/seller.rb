# require 'csv-mapper'

class Seller < ActiveRecord::Base
	has_many :countries
	validates :seller_type,  presence: true, length: { maximum: 50 }

	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  	validates :email, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }
end

# 1. Loading data into table, please remember only load once

# include CsvMapper
# results = import('data/seller.csv') do
#   map_to Seller # Map to the Seller ActiveRecord class (defined above) instead of the default OpenStruct.
#   after_row lambda{|row, seller| seller.save }  # Call this lambda and save each record after it's parsed.

#   start_at_row 1
#   [seller_type, organization_name, first_name, last_name, phone_number, address, email, country_id]
# end
