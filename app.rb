# http://localhost:4567

require 'rubygems'
require 'sinatra'
require 'json'

use Rack::Auth::Basic, "Restricted Area" do |username, password|
  username == 'admin' and password == 'opal@1234'
end

get '/' do
  erb :index, locals: { content: 'home', logged: 'out' }
end

get '/loggedin' do
  erb :index, locals: { content: 'home', logged: 'in' }
end

get '/order' do
  erb :index, locals: { content: 'order', logged: 'out' }
end

get '/about' do
  erb :index, locals: { content: 'about', logged: 'out' }
end

get '/can-i-use-opal-card' do
  erb :index, locals: { content: 'can-i-use-opal-card', logged: 'out' }
end

get '/admin' do
  erb :index, locals: { content: 'admin', logged: 'in' }
end