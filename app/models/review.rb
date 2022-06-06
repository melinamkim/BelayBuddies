class Review < ApplicationRecord
  belongs_to :user
  belongs_to :author, class_name:
end
