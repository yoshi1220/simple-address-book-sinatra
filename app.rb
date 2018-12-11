require 'rubygems'
require 'bundler'

Bundler.require

configure :development do
  set :database, { adapter: "sqlite3", database: "contacts.sqlite3" }
end

configure :production do
  set :database, {adapter: 'postgresql',  encoding: 'unicode', pool: 5 }
end

enable :sessions

class Contact < ActiveRecord::Base
  validates_presence_of :name
  validates_presence_of :email
end

get '/' do
  @now = Time.now
  @contacts = Contact.all
  @message = session.delete :message
  erb :index
end

get '/contact_new' do
  @contact = Contact.new
  erb :contact_form
end

get '/about' do
  erb :about
end

post '/contacts' do
  p params

  name = params[:name]
  email = params[:email]

  # DBに保存
  @contact = Contact.new({name: name, email: email})
  if @contact.save
    session[:message] = "#{name}さんを作成しました。"
    redirect '/'
  else
    erb :contact_form
  end
end
