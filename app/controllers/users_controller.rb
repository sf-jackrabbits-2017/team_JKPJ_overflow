get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  if params[:user][:password] == params[:password_confirm]
    @user = User.new(params[:user])
    if @user.save
      login(@user)
      redirect "/users/#{@user.id}"
    else
      @error = "Wrong email format!"
      erb :'users/new'
    end
  else
    @error = "Your entered passwords don't match!"
    erb :'users/new'
  end
end

get '/users/:id' do
  @user = User.find(params[:id])
  erb :'/users/show'
end

get '/users/:id/edit' do
  @user = User.find(params[:id])
  erb :'/users/edit'
end

put '/users/:id' do
  @user = User.find(params[:id])
  if @user.update(params[:user])
    redirect "/users/#{@user.id}"
  else
    @error = "Try again!"
    erb :'/users/edit'
  end
end

delete '/users/:id/' do
  @user = User.find(params[:id])
  @user.destroy
  redirect "/users"
end
