require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # HOME PAGE
  get '/' do

    erb :index
  end

  # CREATE TWEET
  get '/tweets/new' do

    erb :create_tweet
  end

  post '/tweets' do

  end

  # SHOW TWEET
  get '/tweets/:id' do

    erb :show_tweet
  end

  # EDIT TWEET
  get '/tweets/:id/edit' do

    erb :'tweets/edit_tweet'
  end

  patch '/tweets/:id' do

  end

  # DELETE TWEET
  delete '/tweets/:id/delete' do

  end

  # SIGN UP
  get '/signup' do

    erb :create_user
  end

  post '/signup' do

  end

  # LOG IN
  get '/login' do

    erb :''
  end


  get '/logout' do

  end

end
