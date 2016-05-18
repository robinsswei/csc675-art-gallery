# require 'csv-mapper'

class Artist < ActiveRecord::Base
  has_one :country

  has_many :artwork_artist_maps
  has_many :artworks, :through => :artwork_artist_maps

  # validation
  validates :first_name,  presence: true, length: { maximum: 50 }
  validates :last_name,  presence: true, length: { maximum: 50 }

  validates :gender,  presence: true
  validates :status,  presence: true

  # VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  # validates :email, presence: true, length: { maximum: 255 },
  #                   format: { with: VALID_EMAIL_REGEX }
  
  def fullname
    fullname = self.first_name.to_s + " " + self.last_name.to_s;
  end
end

# include CsvMapper
# results = import('data/artist.csv') do
#   map_to Artist # Map to the Artist ActiveRecord class (defined above) instead of the default OpenStruct.
#   after_row lambda{|row, artist| artist.save }  # Call this lambda and save each record after it's parsed.

#   start_at_row 1
#   [first_name, last_name, gender, status, country_id, date_of_birth, background, phone_number, email]
# end