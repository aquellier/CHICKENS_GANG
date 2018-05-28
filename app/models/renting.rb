class Renting < ApplicationRecord
  belongs_to :chickens_gang
  belongs_to :user
  validates :start_date, :end_date, presence: true
end
