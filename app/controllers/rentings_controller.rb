class RentingsController < ApplicationController
  before_action :set_chickens_gang

  def show
    @renting = Renting.find(params[:id])
  end

  def new
    @renting = Renting.new
  end

  def create
    @renting = Renting.new(renting_params)
    @user = current_user.id
    @renting.user_id = @user
    @renting.chickens_gang = @chickens_gang
    @renting.save
    redirect_to chickens_gang_renting_path(@chickens_gang, @renting)
  end

  private

  def set_chickens_gang
    @chickens_gang = ChickensGang.find(params[:chickens_gang_id])
    authorize @chickens_gang
  end

  def renting_params
    params.require(:renting).permit(:start_date, :end_date)
  end
end
