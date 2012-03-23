Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, 'vjENZtnKu746g7TsymVNQ','Zvb1dvnqYQDMsMYq0UPo6GatkHyx2UiXW5yCPJ8ZOL0'
end
