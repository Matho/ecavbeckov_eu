source 'https://rubygems.org'

if RUBY_VERSION =~ /1.9/
  Encoding.default_external = Encoding::UTF_8
  Encoding.default_internal = Encoding::UTF_8
end

gem 'rails', '3.2.12'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'c


gem 'pg'
gem 'json', '>= 1.7.7'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
   gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'mongrel', '>= 1.2.0.pre2'
  gem "bullet"
  gem 'quiet_assets'
  gem 'ruby-prof'

  #gem 'refinerycms-photo-gallery', :path=> 'vendor/extensions'
end

gem 'jquery-rails', '~> 2.0.3'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
gem 'capistrano'
gem 'rvm-capistrano'

# To use debugger           # gem 'debugger'
#gem 'newrelic_rpm'



# Refinery CMS
gem 'refinerycms', '~> 2.0.10'

# Specify additional Refinery CMS Extensions here (all optional):
gem 'refinerycms-i18n', '~> 2.0.0'
gem "refinerycms-news", '~> 2.0.0'  , :git=>'git://github.com/refinery/refinerycms-news.git', :branch=>'2-0-stable'
gem 'refinerycms-inquiries', '~> 2.0.0'
gem 'refinerycms-videojs', :git => 'git://github.com/Matho/refinerycms-videojs.git'

gem 'refinerycms-search', '~> 2.0.0', :git => 'git://github.com/refinery/refinerycms-search.git', :branch => '2-0-stable'
gem 'refinerycms-page-images', '~> 2.0.0'
gem 'refinerycms-imajax','~> 2.0.0', :git=>'git://github.com/Matho/refinerycms-imajax.git', :branch=>'2-0-stable'
gem 'refinerycms-calendar', '~> 2.0.0' , :git=>'git://github.com/Matho/refinerycms-calendar.git'

#https://github.com/julesce/refinerycms-banners
#http://jgwmaxwell.github.com/refinerycms-pgsearch/
#https://rubygems.org/gems/refinerycms-polls


gem 'execjs'
gem 'libv8'

gem 'refinerycms-photo-gallery', '0.1.1'
#gem 'refinerycms-photo-gallery', :path => '../Github/refinerycms-photo-gallery'

