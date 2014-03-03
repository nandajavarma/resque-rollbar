require "resque-rollbar/version"
require "resque/failure/roll_bar"

Resque.before_first_fork do
  # Force synchronous reporting
  ::Rollbar.configure do |config|
    config.use_async = false
  end
end