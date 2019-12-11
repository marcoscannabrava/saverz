class Researcher < ApplicationRecord
  has_many :users, dependent: :nullify
  has_many :articles
  mount_uploader :photo, PhotoUploader
end
