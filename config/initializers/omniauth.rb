Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, "1605145903090192", "b99a476c7f345ca0f71ecefdc5631489"
  provider :linkedin, "mekowwfxkyuq", "kzaXZ0r4ZfQy3BUo", :scope => 'r_basicprofile r_emailaddress rw_company_admin w_share', :fields => ["id", "email-address", "first-name", "last-name", "headline", "industry", "picture-url", "public-profile-url", "location", "connections"]
end
  #provider :linkedin, "mekowwfxkyuq", "kzaXZ0r4ZfQy3BUo"
