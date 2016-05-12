# require 'csv-mapper'

class Image < ActiveRecord::Base
	belongs_to :artwork_image_map
end

# include CsvMapper
# results = import('data/image.csv') do
#   map_to Image # Map to the Image ActiveRecord class (defined above) instead of the default OpenStruct.
#   after_row lambda{|row, image| image.save }  # Call this lambda and save each record after it's parsed.

#   start_at_row 1
#   [src]
# end
