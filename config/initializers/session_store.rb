# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_rest_session',
  :secret      => '1359e73fc0e056f54d380bde6c70409f2d9adfb414af97f33b8ad9d97869f283c9fcd21f44e453d2c7ba59c504376ec98a072d6b47f36f4c03079c27001d66b2'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
