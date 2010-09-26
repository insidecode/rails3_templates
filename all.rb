@template_path = File.dirname(__FILE__)
@args = $*

scripts = []

# clean up for start
scripts << "cleanup"

# testing setup
scripts << "rspec"

# database
#scripts << "mongoid"

# productivity boost
#scripts << "inherited_resources"
#scripts << "simple_form"

# front-end things
scripts << "jammit"
scripts << "jquery"

# deploy
scripts << "capistrano"

# plugins
scripts << "authentication"
scripts << "flexigrid"

# bundler
scripts << "bundler"

# start git project
scripts << "git"

# execute scripts
scripts.each do |script|
  apply "#{@template_path}/#{script}.rb" unless @args.include? "--skip-#{script}"
end