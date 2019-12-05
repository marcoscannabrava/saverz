class Coupon < ApplicationRecord
  belongs_to :company
  validates :title, presence: true
  validates :company_id, presence: true
end
