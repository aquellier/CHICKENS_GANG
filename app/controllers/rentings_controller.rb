class RentingsController < ApplicationController
  before_action :set_chickens_gang

  def index
    @rentings = Renting.all
  end

  def show
    @renting = current_user.rentings.where(state: 'paid').find(params[:id])
  end

  def new
    @renting = Renting.new
  end

  def create
    @renting = Order.create!(amount: chickengang.price, state: 'pending', user: current_user)
    @user = current_user.id
    @renting.chickens_gang = @chickens_gang
    @renting.save
    redirect_to chickens_gang_renting_path(@chickens_gang, @renting)
  end

def create
  order  = Order.create!(teddy_sku: teddy.sku, amount: teddy.price, state: 'pending', user: current_user)

  redirect_to new_order_payment_path(order)
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
