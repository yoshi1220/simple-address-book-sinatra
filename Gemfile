# frozen_string_literal: true

source "https://rubygems.org"

gem "sinatra"
gem "sinatra-activerecord"
gem "rake"
gem "sqlite3"

group :production do
  gem "pg"
end

group :development, :test do
  gem "sinatra-reloader"
  gem "foreman"
end