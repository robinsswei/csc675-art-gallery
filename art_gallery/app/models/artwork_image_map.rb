# require 'csv-mapper'

class ArtworkImageMap < ActiveRecord::Base
  belongs_to :artwork
  belongs_to :image

  default_scope -> { order(id: :ASC) }
end

# include CsvMapper
# results = import('data/artwork_image_map.csv') do
#   map_to ArtworkImageMap # Map to the ArtworkArtistMap ActiveRecord class (defined above) instead of the default OpenStruct.
#   after_row lambda{|row,artwork_image_map| artwork_image_map.save }  # Call this lambda and save each record after it's parsed.
#   start_at_row 1
#   [artwork_id, image_id]
# end
