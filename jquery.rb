# download jquery files into public/javascript
inside "public/javascripts" do
  get "http://github.com/rails/jquery-ujs/raw/master/src/rails.js", "rails.js"
  get "http://code.jquery.com/jquery-1.4.2.js",                     "jquery-1.4.2.js"
end