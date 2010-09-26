# install authentication plugin
plugin 'insidecode_authentication', :git => 'git://github.com/insidecode/insidecode_authentication.git'

@delayed << lambda {
  generate(:authenticated, "usuario sessions")
}