Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['RHET_IO_TWITTER_KEY'], ENV['RHET_IO_TWITTER_SECRET']
end
