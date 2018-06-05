# customize default behavior of Rails apps
# see http://guides.rubyonrails.org/generators.html
# see https://github.com/mattbrictson/rails-template
gem_group :development, :test do
  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'pry-rails'
end

gem_group :production, :staging do
  gem 'rails_12factor'
end

run('bundle install')
generate('rspec:install')
