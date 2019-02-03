module MetaTagsHelper
  def meta_title
    content_for?(:meta_title) ? content_for(:meta_title) : DEFAULT_META["meta_title"]
  end

  def meta_description
    content_for?(:meta_description) ? content_for(:meta_description) : DEFAULT_META["meta_description"]
  end

  def meta_keywords
    content_for?(:meta_keywords) ? content_for(:meta_keywords) : DEFAULT_META["meta_keywords"]
  end

  def meta_image
    image = content_for?(:meta_image) ? content_for(:meta_image) : DEFAULT_META["meta_image"]
    # ajoutez la ligne ci-dessous pour que le helper fonctionne indifféremment
    # avec une image dans vos assets ou une url absolue
    image.starts_with?("http") ? image : image_url(image)
  end
end
