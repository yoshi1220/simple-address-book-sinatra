# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) {|repo_name| "https://github.com/#{repo_name}" }

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