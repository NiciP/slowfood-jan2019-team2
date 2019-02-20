class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, length: { maximum: 20 }
  validates :password, length: { minimum: 8 }
  validates_presence_of :email, :password
  validates_uniqueness_of :email
end
