class Review < ApplicationRecord
  belongs_to :user
  belongs_to :author, class_name: "User"

  validates :description, presence: true
  validates :rating, presence: true
end
