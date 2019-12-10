class Article < ApplicationRecord
  belongs_to :researcher
  belongs_to :field
end
