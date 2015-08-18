ENV["RAILS_ENV"] ||= "test"
require "spec_helper"
require File.expand_path("../../config/environment", __FILE__)
require "rspec/rails"
require "capybara/rspec"
require "wisper/rspec/matchers"

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.order = "random"
  config.use_transactional_fixtures = true
  config.infer_spec_type_from_file_location!
  config.backtrace_exclusion_patterns << /gems/
  config.include FactoryGirl::Syntax::Methods
  config.include ActiveSupport::Testing::TimeHelpers
  config.include Wisper::RSpec::BroadcastMatcher
  #config.include Requests::JsonHelpers
  #config.include Requests::FileHelpers
end
