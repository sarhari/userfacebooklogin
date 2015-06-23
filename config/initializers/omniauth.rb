Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "1605145903090192", "b99a476c7f345ca0f71ecefdc5631489"
end