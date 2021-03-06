class User < ActiveRecord::Base

  has_secure_password
  has_many :links

  validates :name, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true


  #callbacks
  before_save

end
