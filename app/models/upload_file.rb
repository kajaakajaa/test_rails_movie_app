class UploadFile < ApplicationRecord
  mount_uploader :file, UploadFileUploader
  validates :name, presence: true, length: { minimum: 15, message: "空欄では送信できません" }
  validates :file, presence: { message: "空欄では送信できません" }
end
