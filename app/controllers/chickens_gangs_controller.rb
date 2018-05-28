class ChickensGangsController < ApplicationController
  def index
    @chickens_gangs = ChickensGang.all
  end

  def show
    @chickens_gang = ChickensGang.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
