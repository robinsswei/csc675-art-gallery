# require 'csv-mapper'

class ArtworkArtistMap < ActiveRecord::Base
  belongs_to :artwork
  belongs_to :artist

  default_scope -> { order(id: :ASC) }
end

# include CsvMapper
# results = import('data/artwork_artist_map.csv') do
#   map_to ArtworkArtistMap # Map to the ArtworkArtistMap ActiveRecord class (defined above) instead of the default OpenStruct.
#   after_row lambda{|row,artwork_artist_map| artwork_artist_map.save }  # Call this lambda and save each record after it's parsed.
#   start_at_row 1
#   [artwork_id, artist_id]
# end