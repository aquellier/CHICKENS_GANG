class ChickensGang < ApplicationRecord
  has_many :rentings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :users, through: :rentings

  validates :gang_name, presence: true, uniqueness: true
  validates :breed, presence: true
  validates :capacity, presence: true
  validates :price, presence: true

  mount_uploader :photo, PhotoUploader
end
