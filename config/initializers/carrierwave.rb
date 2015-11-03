CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage = :aws

    config.fog_credentials = {
      #Configuration for Amazon S3
      :provider   => 'AWS',
      :aws_access_key_id    => ENV["AWS_ACCESS_KEY"],
      :aws_secret_access_key  => ENV["AWS_SECRET_KEY"]
    }
    config.fog_directory= ENV['AWS_BUCKET']
  else
    config.storage = :file
    config.enable_processing = Rails.env.development?
  end
end
