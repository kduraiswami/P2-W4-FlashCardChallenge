get '/' do
  erb :index
end

post '/register' do


  if params[:password] == params[:confirmpassword]
    session['user_name']=params[:username]
      t_user=User.create(username: params[:username], password:params[:password])
    if t_user.valid?
      redirect '/play/0'
    else
      "User name already taken"
      redirect '/'
    end

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
  if params[:password] == User.find_by_username(params[:username]).password
  session['user_name']=params[:username]
  redirect '/play/0'
else
  "Wrong username or password"
  redirect '/'
end
end


