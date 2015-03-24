get '/admin' do
 erb :admin
end


get '/admin/create' do

  erb :create
end

get '/delete/:id' do
  Deck.delete(params[:id])
  redirect '/admin'
end

post '/admin/create_deck' do
  newDeck=Deck.create(name:params[:title])
  i=1
  10.times do
    # Card.create(question:que[i] ,answer:ans[i])
    newDeck.cards << Card.create(question:params["question#{i}".to_sym] ,answer:params["answer#{i}".to_sym], dummy_answer_1: params["dummyanswer#{i}".to_sym], dummy_answer_2: params["dummyanswer#{i}".to_sym], dummy_answer_3: params["dummyanswer#{i}".to_sym])
    i+=1
  end

  redirect '/admin'
end

get '/admin/:deck_id/edit' do

  erb :edit
end

post '/admin/confirm' do
  # p '*'*800
new_cards=[]
  Deck.where(id:params[:current_id]).first.cards.each do |car|
    new_cards << Card.new(question:car.question, answer:car.answer,dummy_answer_1: car.dummy_answer_1, dummy_answer_2: car.dummy_answer_2, dummy_answer_3: car.dummy_answer_3)
  end

  Deck.where(name:"Current Deck").first.update_attributes(cards: new_cards)
  session['current_deck']=Deck.find(params[:current_id])

redirect '/admin'
end



get '/display' do
 @deck_id=params[:selection].to_i
 session['current_id']=@deck_id
  erb :display
end
