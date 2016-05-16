# require 'csv-mapper'

class Seller < ActiveRecord::Base
  has_one :country

  has_many :artwork_artist_maps
  has_many :artworks, :through => :artwork_seller_maps

  # validation
  # enum type: [:Person, :Organization]
  # validate :seller_type, inclusion: { in: Seller.type.keys }
  
  # validates :first_name,  presence: true, length: { maximum: 50 }
  # validates :last_name,  presence: true, length: { maximum: 50 }
  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, length: { maximum: 255 },
  #                   format: { with: VALID_EMAIL_REGEX }   
               
  def fullname?
    if !self.first_name.to_s.empty?
      return self.first_name.to_s + " " + self.last_name.to_s;
    elsif !self.organization_name.to_s.empty?
      return self.organization_name.to_s
    end
  end

end



# include CsvMapper
# results = import('data/seller.csv') do
#   map_to Seller # Map to the Seller ActiveRecord class (defined above) instead of the default OpenStruct.
#   after_row lambda{|row, seller| seller.save }  # Call this lambda and save each record after it's parsed.

#   start_at_row 1
#   [seller_type, organization_name, first_name, last_name, phone_number, address, email, country_id]
# end
