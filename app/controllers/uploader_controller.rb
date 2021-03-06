class UploaderController < ApplicationController
  def index
  end

  def show
    @upload_file = UploadFile.find(params[:id])
  end

  def form #(new)
    @upload_file = UploadFile.new
  end

  def upload #(creat)
    @upload_file = UploadFile.new(upload_file_params)
      if @upload_file.save
         redirect_to action: :index
      else
         render "form"
      end
  end

  def download
  end
  
  private
    def upload_file_params
      params.require(:upload_file).permit(:name, :video_file, :thumbnail)
    end
end
