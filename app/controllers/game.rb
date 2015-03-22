get '/play/:id' do
  @id=params[:id].to_i
  if @id < 1
    session['current_score']=0
    session['feedback']=""
  end
  @question=Deck.where(name:"Current Deck").first.cards[@id]
  @answer_options=[@question.answer, @question.dummy_answer_1, @question.dummy_answer_2, @question.dummy_answer_3].shuffle!
  @deck=Deck.where(name:"Game of thrones").first

  erb :game
end

post '/submit' do

  @id=params[:current_id].to_i
  @answer=Deck.where(name:"Current Deck").first.cards[@id].answer
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
    session['feedback'] = "The correct answer was: #{@answer}"
  end

  if @id >= Deck.where(name:"Game of thrones").first.cards.count
 p '-'*80
      if session['current_score'] == 26
        @got_character="George R.R. Martin himself"
      elsif session['current_score']==25
        @got_character="Khaleesi"
      elsif session['current_score']<=24 && session['current_score'] > 21
        @got_character="King in the North"
      elsif session['current_score']<=21 && session['current_score'] > 18
        @got_character="Tyrion"
      elsif session['current_score']<=18 && session['current_score'] > 15
        @got_character="the Kingslayer"
      elsif session['current_score']<=15 && session['current_score'] > 12
        @got_character="Mellisandre, the Red Witch"
      elsif session['current_score']<=12 && session['current_score'] > 9
        @got_character="the Hound"
      elsif session['current_score']<=9 && session['current_score'] > 6
        @got_character="Brienne of Tarth"
      elsif session['current_score']<=6 && session['current_score'] > 3
        @got_character="an unsullied that can't fight"
      elsif session['current_score']<=3 && session['current_score'] >1
        @got_character="Reek"
      else
        @got_character="Hot Pie"
      end
   Game.create(score:session['current_score'].to_i, username:session['user_name'], level:@got_character, user_id: current_user.id,deck_id:current_deck.id)
  session['rank']=@got_character
    redirect '/score'
  end

  redirect "/play/#{@id}"
end
