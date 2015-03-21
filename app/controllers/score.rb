
get '/score' do
  @leaders = Game.all.order(score: :desc)
  erb :final
end
