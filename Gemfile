source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.0.3'

gem 'pg', '~> 0.18'

gem 'puma', '~> 3.0'

gem 'sass-rails', '~> 5.0'

gem 'uglifier', '>= 1.3.0'

gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails'

gem 'turbolinks', '~> 5'

gem 'jbuilder', '~> 2.5'

gem 'devise'

gem 'bootstrap', '~> 4.0.0.alpha6'

gem 'simple_form'

gem "font-awesome-rails"

gem 'cocoon', '~> 1.2', '>= 1.2.10'

gem 'haml', '~> 5.0', '>= 5.0.1'


# group :test do

#   # %w[rspec-core rspec-expectations rspec-mocks rspec-rails rspec-support].each do |lib|
#   #   gem lib, :git => "https://github.com/rspec/#{lib}.git", :branch => 'master'
#   # end

# end



group :development, :test do
  gem 'factory_girl_rails', '~> 4.8'
  gem 'faker', '~> 1.7', '>= 1.7.3'
  gem 'shoulda', '~> 3.5'
  gem 'rspec-rails', '~> 3.5'
  gem 'pry'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
