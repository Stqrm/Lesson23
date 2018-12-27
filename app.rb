#encoding: utf-8
require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'




get '/' do
	erb "Hello!! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
	erb :about
end

get '/contacts' do
	erb :contacts
end

get '/visit' do
	erb :visit
end

post '/visit' do
	@username  = params[:username]
	@phone = params[:phone]
	@email = params[:email]

	@title = 'Thank you!'

	f = File.open "./public/users.txt", "a"
    f.write "Name: #{@username}\nPhone: #{@phone}\nEmail: #{@email}\n"
    f.close
    erb :message
  end