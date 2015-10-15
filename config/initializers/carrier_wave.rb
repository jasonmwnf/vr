if Rails.env.production?
  Carrierwave.configure do |config|
    config.fog_credentials = {
      :provider => "AWS",
      :aws_access_key_id => ENV['S3_ACCESS_KEY']
    }
  end
end