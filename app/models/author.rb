class Author < ApplicationRecord
  has_one_attached :profile_picture
  validates :profile_picture, attached: true, content_type: ['image/png'] ,
    aspect_ratio: :square
    validates :preview, attached: true, size: { between: 1.kilobyte..1.megabytes , message: 'is not given between size' }
                                   
end
