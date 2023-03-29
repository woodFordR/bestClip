class Photo < ApplicationRecord
  belongs_to :user
  has_one_attached :image

  validate :acceptable_image

  private

  def acceptable_image
    binding.b
    return unless image.attached?
    
    unless image.blob.byte_size <= 15.megabyte
      errors.add(:image, "file size is too large")
    end

    acceptable_types = ["image/jpg", "image/jpeg", "image/png"]
    unless acceptable_types.include?(image.content_type)
      errors.add(:image, "file must be a JPEG or PNG")
    end
  end
end