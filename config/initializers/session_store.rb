# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ceheroku_session',
  :secret      => '9abff2b167bd9f9cb00bb8d01fd7b5371337d2dc352e39416b15f9a4c3ee42b31041337f8e673bdee57f4a4bd74e7dbf1efc354841094cd03c8e1f8984fc8e2f'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
