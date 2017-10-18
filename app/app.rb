require 'sinatra/base'
require './app/models/link'

class BookmarkManager < Sinatra::Base

  get '/links' do

    @links = Link.all

    p @links

    erb(:links)

  end


  end
