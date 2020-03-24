class AddDataToUploadFiles < ActiveRecord::Migration[6.0]
  def change
    add_column :upload_files, :data, :binary
  end
end
