class User < ApplicationRecord
  belongs_to :user
  belongs_to :team, optional: true
  has_secure_password

  validates :name, presence: true, length: { in: 2..300 }
  validates :password, length: { in: 6..12 }, allow_nil:true

  @VALID_EMAIL_REGEX = /\A[a-z]{2,20}\.[a-z]{2,20}\@injunior.com.br\z/
  validates :email, presence: true, length: { in: 19..150 }, uniqueness: true,
  format: { with: @VALID_EMAIL_REGEX, message: "Utilize o padrão: nome.sobrenome@injunior.com.br" }

end
