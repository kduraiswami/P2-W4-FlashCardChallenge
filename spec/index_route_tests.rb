require 'spec_helper'

describe "index page" do

  describe "get / index page" do

  it "should return a valid response" do
    get '/'
    expect(last_response.status).to be(200)
  end

  it "should render a form to submit answer" do
    get '/'
    expect(last_response.body).to include('<input type="submit"')
  end

  it "should render a question" do
    get '/'
    expect(last_response.body).to include('?')
  end

  it "should render a selection of answers" do
    get '/'
    expect(last_response.body).to include('<input type="radio"')
  end


  # it "should render a login form" do
  #   get '/'
  #   expect(last_response.body).to include('<input type="submit" value="Login"')
  # end

  # it "should render a signup form" do
  #   get '/'
  #   expect(last_response.body).to include('<input type="submit" value"Signup"')
  # end
end

 describe "post / index page" do

  before :each do
    Game.new()
    Deck.new()
    Card.new(question: "my name is", answer: "kailash")
    @invalid_answer = { (0...8).map { (65 + rand(26)).chr }.join }
  end

  context "user enters correct answer" do

    it "should should move to next question with the correct answer" do
      post '/play/'
      expect(last_response.status).to be(200)
    end

  end

  context "user enters invalid answer" do

    it "should reroute user to the same question with an invalid answer" do
      post '/play/'
      expect(last_response.status).to be(301)
    end

  end

end









