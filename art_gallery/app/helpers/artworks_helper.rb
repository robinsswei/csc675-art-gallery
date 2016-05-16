module ArtworksHelper
  def gravatar_for(artwork)
    @imgId = artwork.artwork_image_map_id
    @img = Image.find(@imgId)

    image_tag(@img.src, class: "img-responsive")
  end

  def get_artists(artwork)
    artwork.artists.each do |artist|
      return link_to artist.fullname, artist
    end
  end

  def get_sellers(artwork)
    artwork.sellers.each do |seller|
      return link_to seller.fullname?, seller
    end
  end

  def get_images(artwork)
    artwork.images.each do |image|
      return link_to image.id, image
    end
  end
end

