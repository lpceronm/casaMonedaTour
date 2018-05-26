class Coin < ApplicationRecord
  mount_uploader :image, ImageUploader
end
