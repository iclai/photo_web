class Photo < ApplicationRecord
  /mount_up;oader :file_location, PhotoImageUpLoader/
  validates_presence_of :title, :date, :description, :file_location
end
