class UsersController < Sinatra::Base

  get '/users' do
    erb :'users/index'
  end
end
