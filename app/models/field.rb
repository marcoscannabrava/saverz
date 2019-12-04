class Field < ApplicationRecord
  has_many :users
  validates :name, uniqueness: true, presence: true
  mount_uploader :photo, PhotoUploader
end
