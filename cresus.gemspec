# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cresus/version'

Gem::Specification.new do |spec|
  spec.name          = "Cresus"
  spec.version       = Cresus::VERSION
  spec.authors       = ["Roland Laurès"]
  spec.email         = ["roland.laures@netcat.io"]

  spec.summary       = %q{Cresus is a tool as simple as possible to manage your treasury and financial aspect.}
  spec.description   = %q{Cresus is based on an excel sheet that has been made to follow the depts, treasury, etc. of our society. It is also made to build Business plan, commercial objectives…}
  spec.homepage      = "http://netcat.io"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "http://netcat.io"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
  spec.add_dependency 'rails', '~> 5.0.0', '>= 5.0.0.1'
# Use sqlite3 as the database for Active Record
  spec.add_dependency 'sqlite3'
# Use Puma as the app server
  spec.add_dependency 'puma', '~> 3.0'
# Use SCSS for stylesheets
  spec.add_dependency 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
  spec.add_dependency 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
  spec.add_dependency 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
  spec.add_dependency 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
  spec.add_dependency 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
  spec.add_dependency 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  spec.add_development_dependency 'byebug'# platform: :mri

  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  spec.add_development_dependency 'web-console'
  spec.add_development_dependency 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  spec.add_development_dependency 'spring'
  spec.add_development_dependency 'spring-watcher-listen', '~> 2.0.0'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
  # FIXME
  #spec.add_dependency 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
end
