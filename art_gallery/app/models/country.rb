# require 'csv-mapper'

class Country < ActiveRecord::Base
	belongs_to :artist
	belongs_to :seller
end

# include CsvMapper
# results = import('data/country.csv') do
#   map_to Country # Map to the Country ActiveRecord class (defined above) instead of the default OpenStruct.
#   after_row lambda{|row, country| country.save }  # Call this lambda and save each record after it's parsed.

#   start_at_row 1
#   [name]
# end
