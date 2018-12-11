# frozen_string_literal: true

source "https://rubygems.org"

gem "sinatra"
gem "sinatra-activerecord"
gem "rake"

group :production do
  gem "pg"
end

group :development, :test do
  gem "sqlite3"
  gem "sinatra-reloader"
  gem "foreman"
end