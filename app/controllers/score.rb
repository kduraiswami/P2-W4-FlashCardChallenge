
get '/score' do
  # @leaders = Game.all.order(score: :desc)
  @leaders = current_deck.games.order(score: :desc)
  erb :final
end
