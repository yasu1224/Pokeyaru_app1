class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick
  process resize_to_fit: [500, 500]

  version :thumb do
    process resize_to_fill: [115,164]
  end

  if Rails.env.production?
    storage :fog
  else
    storage :file
  end
  
  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
 
  def extension_white_list
    %w(jpg jpeg gif png)
  end
 
  def filename
    'image' + File.extname(original_filename) if original_filename
  end
end
