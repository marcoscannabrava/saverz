class Researcher < ApplicationRecord
  has_many :articles
  mount_uploader :photo, PhotoUploader
end
