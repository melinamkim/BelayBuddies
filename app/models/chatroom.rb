class Chatroom < ApplicationRecord
  belongs_to :requester, class_name: "User"
  belongs_to :receiver, class_name: "User"
  has_many :messages
end
