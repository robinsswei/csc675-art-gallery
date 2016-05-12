# require 'csv-mapper'

class Artist < ActiveRecord::Base
  has_one :country
  has_many :artworks, :through => :artwork_artist_map
end

# include CsvMapper
# results = import('data/artist.csv') do
#   map_to Artist # Map to the Artist ActiveRecord class (defined above) instead of the default OpenStruct.
#   after_row lambda{|row, artist| artist.save }  # Call this lambda and save each record after it's parsed.

#   start_at_row 1
#   [first_name, last_name, gender, status, country_id, date_of_birth, background, phone_number, email]
# end