class ChickensGang < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  searchkick locations: [:location]

  has_many :rentings, dependent: :destroy
  has_many :reviews, dependent: :destroy

  has_many :users, through: :rentings
  belongs_to :owner, class_name: 'User', optional: true

  validates :gang_name, presence: true, uniqueness: true
  validates :breed, presence: true
  validates :capacity, presence: true
  validates :price, presence: true

  mount_uploader :photo, PhotoUploader

  def search_data
    attributes.merge(location: {lat: latitude, lon: longitude})
  end
end
