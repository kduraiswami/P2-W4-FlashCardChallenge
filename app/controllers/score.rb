# get '/' do
#   erb :final
# end

get '/score' do
  @game=Game.where(deck_id:1).first
  erb :final
end