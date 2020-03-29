class UploaderController < ApplicationController
  def index
  end

  def show
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
         render "form"
      end
  end

  def download
  end

  def create
    respond_to do |format|
      if @article.update(article_params) && @article.video.recreate_versions!
        format.html { redirect_to @article, notice: 'Article was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def upload_file_params
      params.require(:upload_file).permit(:name)
    end
end
