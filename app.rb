require 'sinatra'

get '/' do
  'Hello World'
end

get '/secret' do
  'This is secret message'
end

get '/random-cat' do
  @names = ["Basile","Amigo", "Oscar", "Viking"].sample
  erb(:index)
end


post '/named-cat' do
  p params
  @names = params[:name]
  erb(:index)
end


get '/cat-form' do
  erb(:index)
end
