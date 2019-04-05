class Child < ApplicationRecord
  belongs_to :marriage
  mount_uploader :photo, PhotoUploader
  has_many :gifts
end
