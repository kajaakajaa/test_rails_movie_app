class UploaderController < ApplicationController
  def index
  end

  def form
  end

  # def upload
  #   @upload_file = UploadFile.new( params.require(:upload_file).permit(:name, :file) )
  #   @upload_file.save
  #   redirect_to action: 'index'
  # end

  def upload
    @upload_file = UploadFile.new( params.require(:upload_file).permit(:name, :file) )
    @upload_file.save
    redirect_to action: "index"
  end

  def download
  end
end
