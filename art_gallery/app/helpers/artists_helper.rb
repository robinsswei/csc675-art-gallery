module ArtistsHelper
  def get_country_name(country_id)
    Country.find(country_id).name
  end

  def date_mdY(date)
    if date.nil?
      ""
    else
      date.strftime("%Y-%m-%d")
    end
  end
end
