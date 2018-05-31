class ChickensGang < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  pg_search_scope :search_by_gang_name_and_breed_and_address,
    against: [ :gang_name, :breed, :address ],
    using: {
      tsearch: { prefix: true }
    }

  has_many :rentings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  has_many :users, through: :rentings
  belongs_to :owner, class_name: 'User', optional: true

  validates :gang_name, presence: true, uniqueness: true
  validates :breed, presence: true
  validates :capacity, presence: true
  validates :price, presence: true

  mount_uploader :photo, PhotoUploader

end
