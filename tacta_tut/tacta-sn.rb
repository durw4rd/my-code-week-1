require 'sinatra'
require './contacts_file.rb'

set :port, 4567

get '/' do
   "<h1>Tacta Contact Manager</h1>"
end

get '/contacts' do
  @contacts = read_contacts
  erb :'contacts/index'
end

get '/contacts/new' do
   erb :'contacts/new'
end

get '/contacts/search' do
   erb :'contacts/search'
end

get '/contacts/:i' do
   @i = params[:i].to_i
   contacts = read_contacts
   @contact = contacts[@i-1]
   erb :'contacts/show'
end

get '/contacts/:i/edit' do
   @i = params[:i].to_i

   contacts = read_contacts
   @contact = contacts[@i-1]

   erb :'contacts/edit'
end

get '/contacts/:i/delete' do
   i = params[:i].to_i

   contacts = read_contacts
   contacts.delete_at( i-1 )
   write_contacts( contacts )

   redirect "/contacts"
end

# posts ----------------------------------------

post '/contacts' do
   new_contact = { name: params[:name], phone: params[:phone], email: params[:email] }

   contacts = read_contacts
   contacts << new_contact
   write_contacts( contacts )

   i = contacts.length

   redirect "/contacts/#{i}"
end

post '/contacts/search' do
   search_contact = { name: params[:name]}

   contacts = read_contacts
   contacts.each_with_index do |contact, i|
     if contact[:name] =~ /#{search_contact[:name]}/i
      @contact = contact
      @i = i
      return erb :"contacts/show"
     end
   end

   redirect "/contacts"
end


post '/contacts/:i/update' do
   i = params[:i].to_i

   updated_contact = { name: params[:name], phone: params[:phone], email: params[:email] }

   contacts = read_contacts
   contacts[i-1] = updated_contact
   write_contacts( contacts )

   redirect "/contacts/#{i}"
end
