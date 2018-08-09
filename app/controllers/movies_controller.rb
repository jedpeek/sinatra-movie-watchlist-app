class MoviesController < ApplicationController

  get '/movies' do
    if logged_in?
      @movies = Movie.all
      erb :'/movies/index'
    else
      redirect to '/login'
    end
  end

  get '/movies/new' do
    if logged_in?
      erb :'/movies/new'
    else
      redirect to '/login'
    end
  end

  get '/movies/:slug' do
    if logged_in?
      @movie = Movie.find_by_slug(params[:slug])
      erb :'/movies/show'
    else
      redirect to '/login'
    end
  end

  post '/movies' do
    if params[:Name] != '' || params[:release_year] != '' || params[:genre] != ''
      @movie = Movie.create(name: params["Name"], release_year: params[:release_year].to_i)
      @movie.user = current_user
      @movie.genre = Genre.find_or_create_by(name: params[:genre])
      @movie.save
      redirect to "/movies/#{@movie.slug}"
    else
      redirect to '/movies/new'
    end
  end

  get '/movies/:slug/edit' do
    if logged_in? && current_user.id == session[:id]
      @movie = Movie.find_by_slug(params[:slug])
      erb :'movies/edit'
    else
      redirect to '/login'
    end
  end

  patch '/movies/:slug' do
    @movie = Movie.find_by_slug(params[:slug])
    @movie.update(params[:song])
    @movie.user = current_user
    @movie.genre_ids = params[:genres]
    @movie.save
    redirect to "/movies/#{@movie.slug}"
  end
end
