class User < ApplicationRecord
  belongs_to :team, optional: true, dependent: :destroy

  has_many :notification, dependent: :destroy
  has_many :user_notification, dependent: :destroy

  has_secure_password

  validates :name, presence: true, length: { in: 2..300 }
  validates :password, length: { in: 6..12 }, allow_nil:true
  validates :email, presence: true, length: { in: 19..254 }, uniqueness: true,
  format: { with: /\A[a-z]{1,20}\.[a-z]{1,20}\@injunior.com.br\z/,
  message: "Padrão de email é: nome.sobrenome@injunior.com.br"}

end
