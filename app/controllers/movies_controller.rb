class MoviesController < ApplicationController

  get '/movies' do
    @movies = Movie.all
    erb :'/movies/index'
  end

  get '/movies/new' do
    erb :'/movies/new'
  end

  get '/movies/:slug' do
    @movie = Movie.find_by_slug(params[:slug])
    erb :'/movies/show'
  end

  post '/movies' do
    @movie = Movie.create(name: params["Name"])
    @movie.artist = User.find_or_create_by(name: params["User Name"])
    @movie.genre_ids = params[:genres]
    @movie.save

    redirect to "/movies/#{@movie.slug}"
  end

  get '/movies/:slug/edit' do
    @movie = Movie.find_by_slug(params[:slug])
    erb :'movies/edit'
  end

  patch '/movies/:slug' do
    @movie = Movie.find_by_slug(params[:slug])
    @movie.update(params[:song])
    @movie.artist = User.find_or_create_by(name: params["User Name"])
    @movie.genre_ids = params[:genres]
    @movie.save
    redirect to "/movies/#{@movie.slug}"
  end



end
