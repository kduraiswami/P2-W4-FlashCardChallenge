get '/play/:id' do
  # session['id']
  session['current_score']=0
  @question=Deck.where(name:"deckofthrones").cards[params[:id]]
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