class ChickensGangsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show]

  def index
    @chickens_gangs = ChickensGang.all
  end

  def show
    @chickens_gang = ChickensGang.find(params[:id])
  end

  def new
    @chickens_gang = ChickensGang.new
  end

  def create
    # add the things in here
    @chickens_gang = ChickensGang.new(chickens_gang_params)
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
  end

  def destroy
    @chickens_gang = ChickensGang.find(params[:id])
    @chicekns_gang.delete
  end

  private

  def chickens_gang_params
    params.require(:chickens_gang).permit(:gang_name, :breed, :capacity, :year_of_birth, :price, :photo )
  end
end
