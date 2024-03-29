CarrierWave.configure do |config|
  if Rails.env.production?
    config.storage    = :aws
    config.aws_bucket = ENV.fetch('S3_BUCKET_NAME')
    config.aws_acl    = 'public-read'

  config.aws_credentials = {
    access_key_id:     ENV.fetch('AWS_ACCESS_KEY'),
    secret_access_key: ENV.fetch('AWS_SECRET_KEY'),
    region:            ENV.fetch('AWS_REGION') # Required
  }
  else
    config.storage = :file
  end
end