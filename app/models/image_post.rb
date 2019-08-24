class ImagePost < ApplicationRecord
  mount_uploader :image, PostImageUploader
end
