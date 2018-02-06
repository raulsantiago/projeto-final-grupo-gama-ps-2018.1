class User < ApplicationRecord
  belongs_to :user
  belongs_to :team, optional: true
  has_secure_password

  validates :name, presence: true, length: { in: 2..300 }
  validates :password, length: { in: 6..12 }, allow_nil:true

  validates :email, presence: true, length: { in: 1..150 }

end
