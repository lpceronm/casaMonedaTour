# == Schema Information
#
# Table name: coins
#
#  id            :bigint(8)        not null, primary key
#  name          :string
#  num_record    :string
#  material      :string
#  country       :string
#  denomination  :string
#  batch         :string
#  location      :text
#  issuer        :string
#  serial_number :string
#  part_number   :integer
#  quantity      :integer
#  image         :string
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#

class Coin < ApplicationRecord
  mount_uploader :image, ImageUploader

end
