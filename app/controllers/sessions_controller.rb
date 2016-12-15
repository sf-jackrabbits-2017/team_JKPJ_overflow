get '/login' do
  erb :'/login'
end

post '/login' do
  @user = User.find_by(email: params[:email])
  if @user && @user.authenticate(params[:password])
    login(@user)
    redirect "/users/#{@user.id}"
  else
    @error = "Email and/or password are invalid!"
    erb :'/login'
  end
end

get '/logout' do
  logout
  redirect "/"
end
