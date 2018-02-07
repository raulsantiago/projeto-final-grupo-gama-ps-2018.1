class User < ApplicationRecord
  belongs_to :team, optional: true
  belongs_to :tasks, optional: true
  belongs_to :notification, optional: true
  belongs_to :office, optional: true

  has_many :user_tasks
  has_many :user_notification
  has_many :project, dependent: :destroy
  has_many :office, dependent: :destroy

  has_secure_password

  validates :name, presence: true, length: { in: 2..300 }
  validates :password, length: { in: 6..12 }, allow_nil:true
  validates :email, presence: true, length: { in: 19..254 }, uniqueness: true,
  format: { with: /\A[a-z]{1,20}\.[a-z]{1,20}\@injunior.com.br\z/,
  message: "Padrão de email é: nome.sobrenome@injunior.com.br"}

end
