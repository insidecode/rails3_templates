# install bundles
run "bundle install"

# now executed delayed tasks
@delayed.each do |task|
  task.call
end