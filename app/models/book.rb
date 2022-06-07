class Book < ApplicationRecord
  belongs_to :authors
  has_many_attached :cover_photos
end
