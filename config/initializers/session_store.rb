# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_pousadasantanna_session',
  :secret      => 'c996814ea6c41ac0dc3ef65c0611f36579d2c726a609d823c6b9a5689ed9e1e13611b143ab4f52439e60b83854f739ab1029891cb99121457158c57befa598cc'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
