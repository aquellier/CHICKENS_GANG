class Review < ApplicationRecord
  belongs_to :user
  belongs_to :chickens_gang
  validates :rating, presence: true, inclusion: { in: 0..5}, numericality: { only_integer: true }
end
