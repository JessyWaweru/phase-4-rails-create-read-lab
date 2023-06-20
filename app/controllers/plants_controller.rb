class PlantsController < ApplicationController
  wrap_parameters format:[]
  def index
    render json: Bird.all
  end

  def show
    if render json: Bird.find(params[:id]),status: :ok
    else render json:'not found'
    end
  end

  def create
    render json:Bird.create(params.permit(:name,:image,:price))
  end
end
