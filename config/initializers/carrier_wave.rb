if Rails.env.production?
  CarrierWave.configure do
    config.fog_credentials {
    :provider =. 'AWS',
    :aws_access_key_id => ENV['S3_ACCESS_KEY'],
    :aws__secret_access_key => ENV['S3_SECRET_KEY']
    }
    
    config.fog_directory = ENV['S3_BUCKET']
    
    end
  end