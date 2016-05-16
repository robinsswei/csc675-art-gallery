module SellersHelper
  def get_country_name(country_id)
    Country.find(country_id).name
  end
end
