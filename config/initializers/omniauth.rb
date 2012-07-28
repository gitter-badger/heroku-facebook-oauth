app_id = ENV["104463593032116"]
app_secret = ENV["cd11754a4e5ed271979750c3e402f350"]

Rails.application.config.middleware.use OmniAuth::Builder do
<<<<<<< HEAD
  #provider :twitter, 'CONSUMER_KEY', 'CONSUMER_SECRET'
=======
  provider :twitter, 'f6tXjIMa5Vtq10Lrl6BRQ', 'FDltCKejpoHFARYBPfkXXpIgI66qxF4T0JzYQLoSdOk'
>>>>>>> 3236f0ef30a234633231a908c8274207c6f46425
  provider :facebook, "104463593032116", "cd11754a4e5ed271979750c3e402f350"
end
