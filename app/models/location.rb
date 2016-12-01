class Location < ActiveRecord::Base
  has_many :appearances
  has_many :visitors, through: :appearances, source: :user

  validates :city, :state, {presence: true}
end
