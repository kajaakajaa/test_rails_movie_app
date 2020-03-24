class UploadFile < ApplicationRecord
  mount_uploader :file, UploadFileUploader
  validates :name, presence: true, length: { minimum: 2, message: "空欄では送信できません" }
  validates :data, presence: { message: "空欄では送信できません" }
end
