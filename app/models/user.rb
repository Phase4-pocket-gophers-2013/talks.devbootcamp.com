class User < ActiveRecord::Base

  has_secure_password

  validates :username, presence: true, uniqueness: true
  validates :password, presence: true

  has_many :talks

  def to_param
    self.username
  end

end