class UploaderController < ApplicationController
  def index
  end

  def show
    # @user = User.find(current_user.id)
    @upload_file = UploadFile.find(params[:id])
  end

  def form
    @upload_file = UploadFile.new
  end

  def upload
    @upload_file = UploadFile.new(upload_file_params)
      if @upload_file.save
         redirect_to action: 'index'
      else
        #  render plain: @upload_file.errors.inspect
         render "form"
      end
  end

  def download
  end

  private
    def upload_file_params
      params.require(:upload_file).permit(:name, :file)
    end
end
