get '/' do
erb :index
end

get '/play/:id' do
  # session['id']`
  # session['current_score']=0
  @id=params[:id]
    @question=Deck.where(name:"Game of thrones").first.cards[params[:id].to_i]
    @answer_options=[@question.answer, @question.dummy_answer1, @question.dummy_answer2, @question.dummy_answer3].shuffle!
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

  # redirect '/'
  redirect '/play/@id'
end
