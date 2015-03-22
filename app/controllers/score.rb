
get '/score' do
  # @leaders = Game.all.order(score: :desc)
  @leaders = current_deck.games.order(score: :desc)
  @user_stats = current_user.games.order(created_at: :desc)
  erb :final
end
