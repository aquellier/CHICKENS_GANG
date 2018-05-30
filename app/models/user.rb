class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :rentings

  has_many :chickens_gangs, foreign_key: "owner_id"
  validates :first_name, :last_name, :address, :email, :encrypted_password, presence: true

end

