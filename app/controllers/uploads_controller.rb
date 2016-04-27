class UploadsController < ApplicationController

  def index
    @uploads = Upload.where(type_id: params[:type_id])

    render json: @uploads
  end

  def show
    render json: Upload.find(params[:id])
  end

  def create
    @type = Type.find(params[:type_id])
    @upload = Upload.create(filename: params[:filename], status: true, type: @type)
    render json: @upload
  end

  # def update
  #   render json: Upload.update(params[:id], upload_params)
  # end

  def destroy
    render json: Upload.destroy(params[:id])
  end

  def upload_params
    params.require(:upload).permit(:filename)
  end
end