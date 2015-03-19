require 'spec helper'

describe "User Model" do

  context 'user enters correct account information' do

    it "#create should add a user to the database" do
      expect{
        User.create(username: "sample", password: "sample")
      }.to change{ User.count }.by(1)
    end

  end


