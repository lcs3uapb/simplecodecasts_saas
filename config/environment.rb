# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

#config.action_mailer.raise_delivery_errors = true
#config.action_mailer.delivery_method = :smtp
ActionMailer:Base.smtp_settings = {
    :address => 'smtp.sendgrid.net',
    :port => '587',
    :authentication => :plain,
    :user_name => ENV['SENDGRID_USERNAME'],
    :password => ENV['SENDGRID_PASSWORD'],
    :domain => 'heroku.com',
    :enable_startstls_auto => true
}

#config.action_mailer.default_url_options = { :host => 'calm-bayou-41264.herokuapp.com' }
