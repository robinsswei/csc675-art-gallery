# require 'csv-mapper'

class Artwork < ActiveRecord::Base
  has_many :artwork_artist_maps
  has_many :artists, :through => :artwork_artist_maps

  has_many :artwork_seller_maps
  has_many :sellers, :through => :artwork_seller_maps

  has_many :artwork_image_maps
  has_many :images, :through => :artwork_image_maps
end

# include CsvMapper
# results = import('data/artwork.csv') do
#   map_to Artwork # Map to the Artwork ActiveRecord class (defined above) instead of the default OpenStruct.
#   after_row lambda{|row,artwork| artwork.save }  # Call this lambda and save each record after it's parsed.

#   start_at_row 1
#   [title, price, date, description, period, edition, medium, size, authentic, stock, subject, artwork_artist_map_id, artwork_seller_map_id, artwork_image_map_id]
# end