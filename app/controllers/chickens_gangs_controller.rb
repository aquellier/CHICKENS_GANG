class ChickensGangsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show]
  def index
    @chickensgangs = ChickensGang.all
  end

  def show
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
  end

  private

  def chickens_gang_params
    params.require(:chickens_gang).permit(:gang_name, :breed, :capacity, :year_of_birth, :price, :photo )
  end
end
