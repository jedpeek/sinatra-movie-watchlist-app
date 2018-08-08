class UsersController < ApplicationController

    get '/users/:slug' do
      @user = User.find_by_slug(params[:slug])
      erb :'/user/show'
    end

    get '/signup' do
      if !logged_in?
        erb :'/users/create_user'
      else
        redirect to '/movies'
      end
    end

    post '/signup' do
        @user = User.create(name: params[:name], email: params[:email], password: params[:password])
        session[:user_id] = @user.id
        redirect to '/movies'
    end


    get '/login' do
      if !logged_in?
        erb :'/users/login'
      else
        redirect to '/movies'
      end
    end

    post "/login" do
      user = User.find_by(:name => params[:name])
          if user && user.authenticate(params[:password])
              session[:user_id] = user.id
              redirect to "/movies"
          else
              redirect to "/signup"
          end
      end

      get '/logout' do
        if logged_in?
          session.destroy
          redirect to '/login'
        else
          redirect to '/'
        end
      end
  end
