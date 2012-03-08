Rails.application.config.middleware.use OmniAuth::Builder do
  provider :developer unless Rails.env.production?
  provider :twitter, ENV['vjENZtnKu746g7TsymVNQ'], ENV['Zvb1dvnqYQDMsMYq0UPo6GatkHyx2UiXW5yCPJ8ZOL0']
end
