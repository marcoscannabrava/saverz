class Company < ApplicationRecord
  has_many :coupons
  validates :name, uniqueness: true, presence: true
  mount_uploader :logo, PhotoUploader
end
