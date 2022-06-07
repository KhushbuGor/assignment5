class Book < ApplicationRecord
  belongs_to :authors
  has_many_attached :cover_photos

  validates :cover_photos, attached: true, content_type: ['image/png'] ,
    aspect_ratio: :square
    validates :preview, attached: true, size: { between: 1.kilobyte..1.megabytes , message: 'is not given between size' }
                                   
end
