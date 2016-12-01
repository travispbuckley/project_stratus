class User < ActiveRecord::Base
  has_many :appearances
  has_many :cities, through: :appearances, source: :location

  validates :username, :email, :hashed_password, {presence: true}
  validates :username, :email, {uniqueness: true}

  def password
    @password ||= BCrypt::Password.new(hashed_password)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.hashed_password = @password
  end

  def authenticate(password)
    self.password == password
  end

end
