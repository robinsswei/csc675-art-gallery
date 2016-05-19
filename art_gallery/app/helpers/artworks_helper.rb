module ArtworksHelper
  def gravatar_for(artwork)
    @imgId = artwork.artwork_image_map_id
    @img = Image.find(@imgId)

    image_tag(@img.src, class: "img-responsive")
  end
  
  def date_mdY(date)
    if date.nil?
      ""
    else
      date.strftime("%Y-%m-%d")
    end
  end
end

