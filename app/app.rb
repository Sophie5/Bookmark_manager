require 'sinatra/base'
require './models/link'

class Bookmarker < Sinatra::Base
attr_reader :links
 get '/links' do
   erb :links
end
get '/links/new' do
   @links = Link.all
  erb :new_link
end
post '/links' do
  Link.create(title: params[:Title], url: params[:URL])
redirect '/links/new'
end
end
