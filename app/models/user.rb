class User < ApplicationRecord

  has_secure_password

  validates :name, presence: true, length: { in: 2..300 }
  validates :email, presence: true, length: { in: 5..254 }, uniqueness: true
  validates :password, length: { in: 6..12 }, allow_nil:true




end
