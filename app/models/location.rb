class Location < ActiveRecord::Base
  has_many :appearances
  has_many :visitors, through: :appearances, source: :user

  validates :city, :state, {presence: true}

  def create_url(state, city)
    "http://api.wunderground.com/api/0f9d8611536a96e6/conditions/q/#{state}/#{city}.json"
  end

end
