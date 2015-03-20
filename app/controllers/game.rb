get '/' do
erb :index
end

get '/play/:id' do
  # session['id']
  # session['current_score']=0
  # p '-'*800
  p @id=params[:id].to_i
  p  @question=Deck.where(name:"Game of thrones").first.cards[@id]
  # p '-'*800
    @answer_options=[@question.answer, @question.dummy_answer_1, @question.dummy_answer_2, @question.dummy_answer_3].shuffle!
    @deck=Deck.where(name:"Game of thrones").first
  erb :game
end

post '/submit' do
  p @id=params[:current_id].to_i
  p @answer=Deck.where(name:"Game of thrones").first.cards[@id].answer
  p params[:answer]

  if @answer == params[:answer]
    @id+=1
    session['current_score']+=1
    @feedback = "You choose correctly."
  else
    @id+=1
    @feedback = "You fucked up that last question, the answer was: #{@answer}"
  end

  # redirect '/'
  redirect "/play/#{@id}"
  # redirect '/play/@id'
end
