get '/' do
erb :index
end

get '/play/:id' do
  # session['id']
  p @id=params[:id].to_i
  if @id <= 1
    session['current_score']=0
  end
  # p '-'*800
  p  @question=Deck.where(name:"Game of thrones").first.cards[@id]
  # p '-'*800
    @answer_options=[@question.answer, @question.dummy_answer_1, @question.dummy_answer_2, @question.dummy_answer_3].shuffle!
    @deck=Deck.where(name:"Game of thrones").first
  erb :game
end

post '/submit' do
  @id=params[:current_id].to_i
  @answer=Deck.where(name:"Game of thrones").first.cards[@id].answer
  params[:answer]



  if @answer == params[:answer]
    @id+=1
    session['current_score']+=1
    session['feedback'] = "You choose correctly."
  else
    @id+=1
    session['feedback'] = "You fucked up that last question, the answer was: #{@answer}"
  end

if @id >= Deck.where(name:"Game of thrones").first.cards.count
  p "8"*800
  redirect '/score'
end
  # redirect '/'
  redirect "/play/#{@id}"
  # redirect '/play/@id'
end
