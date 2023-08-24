class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable

  validates :nickname, presence: true
  validates :email, presence: true
  validates :password, presence: true, on: :create

  has_one_attached:img_data
  has_many:reservations
  has_many:rooms
end
