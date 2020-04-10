class AddVideoFileToUploadFiles < ActiveRecord::Migration[6.0]
  def change
    add_column :upload_files, :video_file, :binary
    add_column :upload_files, :thumbnail, :binary
  end
end
