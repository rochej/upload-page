class UploadsController < ApplicationController

  def index
    render json: Upload.where(type_id: params[:type_id])
  end

  def show
    render json: Upload.find(params[:id])
  end

  def create
    render json: Upload.create(upload_params)
  end

  def update
    render json: Upload.update(params[:id], upload_params)
  end

  def destroy
    render json: Upload.destroy(params[:id])
  end

  def upload_params
    params.require(:upload).permit(:filename)
  end
end