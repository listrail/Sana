class WeightsController < ApplicationController
  before_action :set_weight, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:new, :show, :destroy]

  def index
    @weights = Weight.all
  end

  def show
  end

 
  def new
    @weight = current_user.weights.build
  end

  
  def edit
  end


  def create
    @weight = current_user.weights.build(weight_params)

      if @weight.save
        redirect_to @weight, notice: 'Weight was successfully created.'
      else
        render :new
      end
    end


  def update
      if @weight.update(weight_params)
        redirect_to @weight, notice: 'Weight was successfully updated.'
      else
        render :edit
      end
    end

  # DELETE /weights/1
  # DELETE /weights/1.json
  def destroy
    @weight.destroy
      redirect_to weights_url, notice: 'Weight was successfully destroyed.'
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight
      @weight = Weight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weight_params
      params.require(:weight).permit(:description)
    end

