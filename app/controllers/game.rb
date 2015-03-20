get '/' do
erb :index
end

get '/play/:id' do
  # session['id']
  session['current_score']=0
  @id=params[:id]
    @question=Deck.where(name:"Game of thrones").first.cards[params[:id].to_i]
    @answer_options=[@question.answer, @question.dummy_answer1, @question.dummy_answer2, @question.dummy_answer3].shuffle!
    @deck=Deck.where(name:"Game of thrones").first
  erb :game
end

post '/submit' do
  p @id=params[:current_id].to_i
  p @answer=Deck.where(name:"Game of thrones").first.cards[@id].answer
  p params[:answer]
  # if @answer == params[:answer]
  #   @id+=1
  # #   session['current_score']+=1
  # @id=params[:current_id]
  if @answer == params[:answer]
    @id+=1
    session['current_score']+=1
    @feedback = "You choose correctly."
  else
    @id+=1
    @feedback = "You fucked up that last question, the answer was: #{@answer}"
  end

  redirect '/'
  redirect "/play/#{@id}"
  # redirect '/play/@id'
end
