module ImagesHelper
  def gravatar_for(image)
    gravatar_url = image.src
    image_tag(gravatar_url, class:"gravatar")
  end
end
