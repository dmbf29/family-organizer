class Marriage < ApplicationRecord
  belongs_to :male
  belongs_to :female
  mount_uploader :photo, PhotoUploader
end
