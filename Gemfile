source "http://rubygems.org"

# Specify your gem's dependencies in nextday.gemspec
gemspec

gem 'rake'

require 'rbconfig'

if RbConfig::CONFIG['target_os'] =~ /darwin/i
  gem 'rb-fsevent', '>= 0.4.0', :require => false
  gem 'growl_notify', :require => false
  gem 'guard', '~> 0.6.0', :require => false
  gem 'guard-rspec', '~> 0.4.0', :require => false
end