# apply default application layout
get "#{File.dirname(__FILE__)}/resources/application.html.erb", "app/views/layouts/application.html.erb", :force => true
get "#{File.dirname(__FILE__)}/resources/login.html.erb", "app/views/layouts/login.html.erb", :force => true
get "#{File.dirname(__FILE__)}/resources/_footer.html.erb", "app/views/layouts/_footer.html.erb", :force => true
get "#{File.dirname(__FILE__)}/resources/stylesheets/insidecode.css", "public/stylesheets/insidecode.css", :force => true
get "#{File.dirname(__FILE__)}/resources/stylesheets/idtabs.css", "public/stylesheets/idtabs.css", :force => true
get "#{File.dirname(__FILE__)}/resources/stylesheets/superfish.css", "public/stylesheets/superfish.css", :force => true
