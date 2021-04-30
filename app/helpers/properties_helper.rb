module PropertiesHelper
  def property_thumbnail(property)
    img = property.photo.attached? ? url_for(property.photo) : "placeholder.jpg"
    image_tag(img, class: "property-thumb")
  end

  def property_thumbnail_url(property)
    img = property.photo.attached? ? url_for(property.photo) : "placeholder1.jpg"
  end

  def property_photo_url(property)
    img = property.photo.attached? ? url_for(property.photo) : 'placeholder2.jpg'
  end

  def property_img_int_url(property)
    img = property.img_int.attached? ? url_for(property.img_int) : 'placeholder2.jpg'
  end

  def property_img_ext_url(property)
    img = property.img_ext.attached? ? url_for(property.img_ext) : 'placeholder2.jpg'
  end
end