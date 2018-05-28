class ChickensGang < ApplicationRecord
  has_many :users, through: :rentings

  validates :gang_name, presence: true, uniqueness: true
  validates :breed, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
end
