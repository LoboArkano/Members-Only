class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :posts
  validates :name, presence: true, uniqueness: true, length: { maximum: 16, too_long: "%<count>s is the maximum characters allowed"  }
  validates :status, :email, :encrypted_password,  presence: true
  validates :email, uniqueness: true, format: { with: URI::MailTo::EMAIL_REGEXP }

end
