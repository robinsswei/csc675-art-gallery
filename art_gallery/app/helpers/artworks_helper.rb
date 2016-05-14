module ArtworksHelper
  def gravatar_for(artwork)
    @imgId = artwork.artwork_image_map_id
    @img = Image.find(@imgId)

    image_tag(@img.src, class: "img-responsive")
  end

  # TO-DO
  def get_artist_name(artwork)
    @artists = artwork.artists

    @artists.each do |artist|
      fullname = artist.first_name + " , " + artist.last_names
    end
  end
end
