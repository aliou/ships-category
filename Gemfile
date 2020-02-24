source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'rails', '~> 5.2.0'

gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.12'

group :development, :test do
  gem 'pry-byebug'
  gem 'pry-rails'

  gem 'rspec-rails'
  gem 'spring-commands-rspec'

  gem 'faker'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
