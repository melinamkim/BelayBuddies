class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reviews
  has_many :messages # maybe we dont need this?
  has_many :availabilities
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def chatrooms
    Chatroom.where(requester: self).or(Chatroom.where(receiver: self))
  end
end
