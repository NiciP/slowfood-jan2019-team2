class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :email, length: { maximum: 20 }
  validates :password, length: { minimum: 8 }
  validates_presence_of :email, :password
  validates_uniqueness_of :email

  class User < ApplicationRecord
    has_many :orders, class_name: 'Cartify::Order', foreign_key: :user_id
    has_one :billing, class_name: 'Cartify::Billing', foreign_key: :user_id
    has_one :shipping, class_name: 'Cartify::Shipping', foreign_key: :user_id
    has_many :addresses, class_name: 'Cartify::Address', foreign_key: :user_id
  end
end
