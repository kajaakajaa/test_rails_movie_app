class RemoveFileFromUploadFiles < ActiveRecord::Migration[6.0]
  def change

    remove_column :upload_files, :file, :string

    remove_column :upload_files, :data, :binary
  end
end
