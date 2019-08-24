CarrierWave.configure do |config|
  config.fog_credentials = {
    provider:              'AWS',                        # required
    aws_access_key_id:     'AWS_ACCESS_KEY_ID',                        # required unless using use_iam_profile
    aws_secret_access_key: 'AWS_SECRET_ACCESS_KEY',                        # required unless using use_iam_profile
    use_iam_profile:       true,                         # optional, defaults to false
    region:                'US East(N. Virgina)',                  # optional, defaults to 'us-east-1'
  }
  config.fog_directory  = 'sciwrite'                                      # required

  config.fog_attributes = { cache_control: "public, max-age=#{365.days.to_i}" } # optional, defaults to {}
end
