class Author < ApplicationRecord
  has_one_attached :profile_picture
  validates :profile_picture, attached: true, content_type: ['image/png'] ,
  aspect_ratio: :square, size: { 1.megabytes, message: 'is not in given size' }
end
