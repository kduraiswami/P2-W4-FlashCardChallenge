require_relative 'spec_helper'

describe "Card Model" do

  it "validation should make sure a new question has four possible answers" do
    expect{
      Card.create(question: "(0...8).map { (65 + rand(26)).chr }.join", answer: "(0...8).map { (65 + rand(26)).chr }.join")
    }.to change{Card.count}.by(0)
  end

end

