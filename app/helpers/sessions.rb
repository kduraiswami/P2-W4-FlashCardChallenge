helpers do

  def current_user
        # TODO: return the current user if there is a user signed in.
        User.find_by_username(session['user_name'])
  end

  def current_deck
        Deck.find(session['current_id'])
  end

  def give_token
      session['signed_in']=true
      sessions['user_name']=params[:email]
      redirect '/'
  end

end