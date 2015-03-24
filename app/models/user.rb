class User < ActiveRecord::Base
  has_many :games

  validates :username, uniqueness: true
  validates :username, presence: true
end
