get '/play/:id' do
  # session['id']
  p @id=params[:id].to_i
  if @id < 1
    session['current_score']=0
    session['feedback']=""
  end
  # p '-'*800
  @question=Deck.where(name:"Game of thrones").first.cards[@id]
  # @id
  # p '-'*800
    @answer_options=[@question.answer, @question.dummy_answer_1, @question.dummy_answer_2, @question.dummy_answer_3].shuffle!
    @deck=Deck.where(name:"Game of thrones").first
  erb :game
end

post '/submit' do

  @id=params[:current_id].to_i



  @answer=Deck.where(name:"Game of thrones").first.cards[@id].answer
  params[:answer]

if params[:answer] == nil
  redirect "/play/#{@id}"
end

  if @answer == params[:answer]
    @id+=1
    session['current_score']+=1
    session['feedback'] = "You choose wisely. Proceed."
  else
    @id+=1
    session['feedback'] = "You fu@%#! up that last question! The correct answer was: #{@answer}"
  end

if @id >= Deck.where(name:"Game of thrones").first.cards.count
  redirect '/score'

if session['current_score'] == 26
  got_character="George R.R. Martin himself"
elsif session['current_score']==25
  got_character="Khaleesi"
elsif session['current_score']<=24
  got_character="King in the North"
elsif session['current_score']<=21
  got_character="Tyrion"
elsif session['current_score']<=18
  got_character="The Kingslayer"
elsif session['current_score']<=15
  got_character="Mellisandre, the Red Witch"
elsif session['current_score']<=12
  got_character="The Hound"
elsif session['current_score']<=9
  got_character="Brienne of Tarth"
elsif session['current_score']<=6
  got_character="An unsullied that can't fight"
elsif session['current_score']<=3 && session['current_score'] >1
  got_character="Reek"
else
  got_character="Hot Pie"

end



  Game.create(score:session['current_score'], username:session['user_name'], level:got_character)
end
  # redirect '/'
  redirect "/play/#{@id}"
  # redirect '/play/@id'
end
