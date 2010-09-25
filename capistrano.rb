# setup capistrano gem
gem 'capistrano', '2.5.19', :group => :development

@delayed << lambda {
  # setup capistrano
  capify!
  
  # get deploy basic file
  get "#{File.dirname(__FILE__)}/resources/deploy.rb", "config/deploy.rb", :force => true
}