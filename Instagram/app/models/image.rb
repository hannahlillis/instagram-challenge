class Image < ApplicationRecord
  has_attached_file :image, styles: { small: "100x100", med: "250x250", large: "200x200" }
  validates_attachment :image, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
end
