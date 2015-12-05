class QuadrantsController < ApplicationController
  before_action :set_quadrant, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @quadrants = Quadrant.all
    respond_with(@quadrants)
  end

  def show
    respond_with(@quadrant)
  end

  def new
    @quadrant = Quadrant.new
    respond_with(@quadrant)
  end

  def edit
  end

  def create
    @quadrant = Quadrant.new(quadrant_params)
    @quadrant.save
    respond_with(@quadrant)
  end

  def update
    @quadrant.update(quadrant_params)
    respond_with(@quadrant)
  end

  def destroy
    @quadrant.destroy
    respond_with(@quadrant)
  end

  private
    def set_quadrant
      @quadrant = Quadrant.find(params[:id])
    end

    def quadrant_params
      params[:quadrant]
    end
end
