class Photo < ApplicationRecord
  mount_uploader :file_location, PhotoImageUploader # 在file_location掛載上傳器Photo_image_uploader.rb
  validates_presence_of :title, :date, :description, :file_location
end
