class Book < ApplicationRecord
  belongs_to :author
  has_many_attached :cover_photos


  validates :cover_photos, attached: true, content_type: ['image/png'] ,
    aspect_ratio: :square,
    size: { between: 1.kilobyte..1.megabytes , message: 'is not given between size' }
end
