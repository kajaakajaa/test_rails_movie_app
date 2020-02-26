class UploadFile < ApplicationRecord
  mount_uploader :file, UploadFileUploader
  validates :name, presence: true, length: { minimum: 15 }
  validates :file, presence: true
end
