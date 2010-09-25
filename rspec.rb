@use_rspec = true

# append generator
inject_into_file "config/application.rb", :after => "config.generators do |generator|\n" do
  (" " * 6) + "generator.test_framework :rspec, :views => false\n"
end

# configure rspec gem
gem 'rspec-rails', '2.0.0.beta.22', :group => :test

@delayed << lambda {
  # generate
  generate "rspec:install"
  
  # configure filters
  inject_into_file "spec/spec_helper.rb", :after => "config.mock_with :rspec\n" do
    "  config.filter_run :focus => true\n" +
    "  config.run_all_when_everything_filtered = true\n"
  end
  
  gsub_file "spec/spec_helper.rb", /config\.fixture_path.+/, %{}
  gsub_file "spec/spec_helper.rb", %{config.use_transactional_fixtures = true}, %{}
  
  # rspec runner configuration
  get "#{File.dirname(__FILE__)}/resources/dot_rspec", ".rspec", :force => true
}