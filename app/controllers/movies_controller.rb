class MoviesController < ApplicationController

  get '/movies' do
    erb :'index'
  end


end
