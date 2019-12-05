class Field < ApplicationRecord
  has_many :users, dependent: :nullify
  validates :name, uniqueness: true, presence: true
  mount_uploader :photo, PhotoUploader
end
