require 'sinatra'
require 'shotgun'
require './toys_rw_file.rb'

set :port, 9393

get '/' do
  erb :'/homepage/home'
end

get '/inventory' do
  @toys = read_items
  erb :'inventory/index'
end

get '/inventory/new' do
   erb :'inventory/new'
end




get '/inventory/:i' do
  @i = params[:i].to_i
  toys = read_items
  @item = toys[@i]
  erb :'inventory/show'
end

# posts -----------------------------------------------

post '/inventory' do
  new_item = { name: params[:name], description: params[:description], quantity: params[:quantity], id: params[:id] }

  toys = read_items
  toys << new_item
  write_items(toys)

  i = toys.length

  redirect "/inventory/#{i-1}"
end
