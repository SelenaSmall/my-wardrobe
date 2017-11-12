CarrierWave.configure do |config|
  config.storage = :file
  if Rails.env == 'test'
    config.root = "#{Rails.root}/tmp"
  else
    config.root = "#{Rails.root}/uploads"
  end
end
