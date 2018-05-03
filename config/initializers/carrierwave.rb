CarrierWave.configure do |config|
  config.storage = :file
  if Rails.env == 'test'
    config.root = "#{Rails.root}/tmp"
  else
    # config.root = "#{Rails.root}/uploads"
    config.root = "#{Rails.root}/public"
  end
end
