class UploadFile < ApplicationRecord
  mount_uploader :video_file, UploadFileUploader
  mount_uploader :thumbnail, UploadFileUploader
  validates :name, presence: true, length: { minimum: 2, message: "空欄では送信できません" }
  validates :video_file, :thumbnail, presence: { message: "空欄では送信できません" }
end
