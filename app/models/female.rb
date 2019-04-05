class Female < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  has_one :marriage
end
