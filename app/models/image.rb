class Image < ApplicationRecord
  mount_uploader :imagedata, PostImageUploader
end
