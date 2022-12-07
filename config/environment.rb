# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

#log
Rails.logger = Logger.new(STDOUT)
Rails.logger.level = Logger::DEBUG
Rails.logger = ActiveSupport::Logger.new("log/#{Rails.env}.log")