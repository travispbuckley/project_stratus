class Location < ActiveRecord::Base
  has_many :appearances
  has_many :visitors, through: :appearances, source: :user

  validates :city, :state, {presence: true}

  def create_url
    "http://api.wunderground.com/api/0f9d8611536a96e6/conditions/q/#{self.state}/#{self.city}.json"
  end

end
