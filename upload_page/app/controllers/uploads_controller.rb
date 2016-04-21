class UploadsController < ApplicationController

  def index
    render json: Upload.all
  end

  def show
    render json: Upload.find(params[:id])
  end

  def create
    render json: Upload.create(params[:upload])
  end

  def update
    render json: Upload.update(params[:id], params[:upload])
  end

  def destroy
    render json: Upload.destroy(params[:id])
  end
end