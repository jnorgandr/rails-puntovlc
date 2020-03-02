class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, :profile_picture, presence: true
  validates :email, uniqueness: true, uniqueness: { case_sensitive: false }
  validates :address, presence: true, length: { minimum: 30, maximum: 150 }

end
