get '/' do
erb :index
end

post '/register' do
  @username = params[:username]
  new_user = User.new(username: @username)
  new_user.save
redirect '/play/0'
end
