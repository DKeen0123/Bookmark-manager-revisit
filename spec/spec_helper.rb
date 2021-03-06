ENV['RACK_ENV'] = 'test'

require File.join(File.dirname(__FILE__), '..', 'app.rb')
require 'capybara'
require 'rspec'
require 'capybara/rspec'

Capybara.app = BookmarkManager
RSpec.configure do |config|
  config.before(:each) do
    require 'setup_test_database'
  end
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.shared_context_metadata_behavior = :apply_to_host_groups
end
