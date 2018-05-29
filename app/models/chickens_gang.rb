class ChickensGang < ApplicationRecord
  has_many :rentings
  has_many :users, through: :rentings
  belongs_to :owner, class_name: 'User', optional: true

  validates :gang_name, presence: true, uniqueness: true
  validates :breed, presence: true
  validates :capacity, presence: true
  validates :price, presence: true
end
