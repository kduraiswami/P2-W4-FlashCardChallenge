require 'spec_helper'

describe "Card Model" do

  it "should make sure there are the same number of questions and answers" do
    expect(Card.question.count).to eq(Card.answer.count)
  end

  it "should make sure a new question has four possible answers" do
    expect{
      Card.create(question: "Hi how are you", answer: "great")
    }.to change{Card.count}.by(0)
  end

end

