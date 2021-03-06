get '/users/new' do
  erb :'/users/new'
end

post '/users' do
  user = User.new(params['user'])
  if user.save
    session[:user_id] = user.id
    redirect "/users/#{user.id}"
  else
    @errors = user.errors.full_messages
    erb :"/users/new"
  end
end

get '/users/:id' do
  if current_user == User.find(params[:id])
    @user = current_user
    @cities = @user.cities
    erb :"/users/show"
  else
    redirect '/'
  end
end
