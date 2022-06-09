class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :reviews
  has_many :chatrooms
  has_many :messages # maybe we dont need this?
  has_many :availabilities
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one_attached :photo

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  def chatrooms
    Chatroom.where(requester: self).or(Chatroom.where(receiver: self))
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def types_of_climbing
    types = []
    types << 'indoor bouldering' if indoor_bouldering?
    types << 'indoor sport climbing' if indoor_sport_climbing?
    types << 'indoor top roping' if indoor_top_roping?
    types << 'outdoor bouldering' if outdoor_bouldering?
    types << 'outdoor sport climbing' if outdoor_sport_climbing?
    types << 'outdoor trad climbing' if outdoor_trad_climbing?
    types.join(', ')
  end

end
