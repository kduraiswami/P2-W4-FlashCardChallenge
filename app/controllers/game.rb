get '/' do
erb :game
end

get '/play/:id' do
  # session['id']
  puts @id = params[:id]
  # session['current_score']=0
    # @question=Deck.where(name:"Game of thrones").first.cards.first
    @question=Deck.where(name:"Game of thrones").first.cards[params[:id].to_i]
    # @question=Deck.where(name:"Game of thrones").first.
    # cards[params[:id]]
    @deck=Deck.where(name:"Game of thrones").first
  erb :game
end


post '/submit' do
  @id=params[:current_id]
  if @answer == params[:answer]
    @id+=1
    session['current_score']+=1
  else
    @id+=1
  end

  redirect '/play/@id'
end
