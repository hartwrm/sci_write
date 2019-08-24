CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AWS_ACCESS_KEY',                        # required unless using use_iam_profile
    aws_secret_access_key: 'AWS_SECRET_KEY',                        # required unless using use_iam_profile
    region:                'us-east-1',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'S3_BUCKET'                                      # required

  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end
