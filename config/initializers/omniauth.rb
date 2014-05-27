OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, ENV['1411951029087067'], ENV['7b3cf986d098a4da852601501c03ccf2']
end