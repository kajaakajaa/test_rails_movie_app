class UploaderController < ApplicationController
  def index
  end

  def form
  end

  def upload
    @upload_file = UploadFile.new(upload_file_params)
    @upload_file.save
    redirect_to action: 'index'
  end

  def download
  end

  private
    def upload_file_params
      params.require(:upload_file).permit(:name, :file)
    end
end
