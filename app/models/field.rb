class Field < ApplicationRecord
  has_many :users, dependent: :nullify
  has_many :articles
  validates :name, uniqueness: true, presence: true
  mount_uploader :photo, PhotoUploader

  before_create :set_slug

  scope :sorted_by_index, -> { order(index: :asc) }

  private

  def set_slug
    self.slug = name.parameterize
  end
end
