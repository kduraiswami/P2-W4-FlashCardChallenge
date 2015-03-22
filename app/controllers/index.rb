get '/' do
  erb :index
end

post '/register' do
  # @username =
  # Users.
  if params[:password] == params[:confirmpassword]
    session['user_name']=params[:username]
    User.create(username: params[:username], password:params[:password])
    redirect '/play/0'
  else
    redirect '/'
  end
  # new_user.save
  redirect '/play/0'
end

get '/logout' do
  session['user_name']=nil
  redirect '/'
end

get '/login' do
  session['user_name']=params[:username]
  redirect '/play/0'
end


