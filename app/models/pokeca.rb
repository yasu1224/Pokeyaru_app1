class Pokeca < ApplicationRecord
  belongs_to :box
  belongs_to :genre
  belongs_to :rare
  mount_uploader :image, ImageUploader

  def thumbnail
    return self.image.variant(resize: '300x300').processed
  end
  
end
