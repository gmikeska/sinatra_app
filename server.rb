require 'sinatra'

get '/' do
  "Hey, this is a web app"
end
get '/welcome/:name ' do
  erb :welcome
end
get '/say/*/to/*/mynameis/*' do
  puts params
  erb :say
end

get '/form' do
  erb :form
end

post '/form' do
  puts params
  @name = params[:name]
  @email = params[:mail]
  @vegetarian = params[:vegetarian]
  @blood_type = params[:bloodtype]
  erb :info
end