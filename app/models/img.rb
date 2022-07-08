class Img < ApplicationRecord
  belongs_to :product
  mount_uploader :img, ImgsUploader
end
