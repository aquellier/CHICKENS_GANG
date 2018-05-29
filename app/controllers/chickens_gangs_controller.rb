class ChickensGangsController < ApplicationController
  before_action :set_chickens_gang, only: [:show, :destroy, :edit, :update, :booking]
  skip_before_action :authenticate_user!, only: [ :index, :show]


  def index
    @chickens_gangs = policy_scope(ChickensGang)
  end

  def show

  end

  def new
    @chickens_gang = ChickensGang.new
    authorize @chickens_gang
  end

  def create
    # add the things in here
    @chickens_gang = ChickensGang.new(chickens_gang_params)
    @chickens_gang = current_user.chickens_gangs.new(chickens_gang_params)
    authorize @chickens_gang
    if @chickens_gang.save
      redirect_to chickens_gangs_path
    else
      render :new
    end

    #raise
  end

  def edit
  end

  def update
    @chickens_gang.update(chickens_gang_params)
    redirect_to chickens_gang_path(@chickens_gang)
  end

  def destroy
    @chickens_gang.destroy
    redirect_to chickens_gangs_path
  end

  def booking
  end

private

  def set_chickens_gang
    @chickens_gang = ChickensGang.find(params[:id])
    authorize @chickens_gang
  end

  def chickens_gang_params
    params.require(:chickens_gang).permit(:gang_name, :breed, :capacity, :year_of_birth, :price, :photo )
  end
end
