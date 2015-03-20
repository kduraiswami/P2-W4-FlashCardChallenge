require_relative 'spec_helper'

describe "User Model" do

  context 'user enters correct account information' do

    it "#create should add a user to the database" do
      expect{
        User.create(username: "sample", password: "sample")
      }.to change{ User.count }.by(1)
    end

  end

  context 'user enters invalid account information' do

    it "validation should not allow a password less than 6 characters" do
      expect{
        User.create(username: "sample1", password: "(0...3).map { (65 + rand(26)).chr }.join")
      }.to change { User.count }.by(0)
    end

    it "validation should not allow a password without a number" do
      expect{
        User.create(username: "sample1", password: "(0...8).map { (65 + rand(26)).chr }.join")
      }.to change { User.count }.by(0)
    end

    it "validation should not allow a username without a number" do
      expect{
        User.create(username:"(0...8).map { (65 + rand(26)).chr }.join", password: "(0...8).map { (65 + rand(26)).chr }.join + 1")
      }.to change { User.count }.by(0)
    end

  end

end


