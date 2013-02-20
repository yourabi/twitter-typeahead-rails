# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'twitter-typeahead-rails/version'

Gem::Specification.new do |gem|
  gem.name          = "twitter-typeahead-rails"
  gem.version       = Twitter::Typeahead::Rails::VERSION
  gem.authors       = ["Yousef Ourabi"]
  gem.email         = ["yourabi@gmail.com"]
  gem.description   = %q{twitter-typeahead-rails packages the typeahead.js jquery plugin for rails}
  gem.summary       = %q{twitter-typeahead-rails packages the typeahead.js jquery plugin for rails}
  gem.homepage      = "https://github.com/yourabi/twitter-typeahead-rails"

  gem.add_dependency             'railties',   '>= 3.1'
  gem.add_dependency             'actionpack', '>= 3.1'
  gem.add_dependency             'jquery-rails'
  
  gem.add_development_dependency 'rails', '>= 3.1'

  gem.files         = `git ls-files`.split($/)
  gem.require_paths = ["lib"]
end
