class ImageUploader < CarrierWave::Uploader::Base
  storage :file
  process convert: 'png'
  process quality: 1000
  process resize_to_fill: [1250, 760]
  version :mobile do
    process resize_to_fill: [170,90]
    process quality: 1500
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{model.id}"
  end

  def extension_whitelist
     %w(jpg jpeg gif png)
  end

  def filename
     "#{secure_token}.png" if original_filename.present?
  end

  protected
  def secure_token
    var = :"@#{mounted_as}_secure_token"
    model.instance_variable_get(var) or model.instance_variable_set(var, SecureRandom.uuid)
  end

end
