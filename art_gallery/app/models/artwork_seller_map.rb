# require 'csv-mapper'

class ArtworkSellerMap < ActiveRecord::Base
  belongs_to :artwork
  belongs_to :seller
  default_scope -> { order(id: :ASC) }
end

# include CsvMapper
# results = import('data/artwork_seller_map.csv') do
#   map_to ArtworkSellerMap # Map to the ArtworkImageMap ActiveRecord class (defined above) instead of the default OpenStruct.
#   after_row lambda{|row,artwork_seller_map| artwork_seller_map.save }  # Call this lambda and save each record after it's parsed.

#   start_at_row 1
#   [artwork_id, seller_id]
# end