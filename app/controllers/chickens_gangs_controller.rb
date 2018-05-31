class ChickensGangsController < ApplicationController
  before_action :set_chickens_gang, only: [:show, :destroy, :edit, :update]
  skip_before_action :authenticate_user!, only: [ :index, :show]

  def index
    @chickens_gangs = policy_scope(ChickensGang)
    if params[:query].present?
      @chickens_gangs = ChickensGang.search_by_gang_name_and_breed_and_address(params[:query])
    else
      @chickens_gangs = ChickensGang.all
    end


    @chickens_gangs = @chickens_gangs.where.not(latitude: nil, longitude: nil)
    chickenicon = 'https://s22.postimg.cc/a3r5eegoh/chicken.png';
    @markers = @chickens_gangs.map do |chickens_gang|
      {
        lat: chickens_gang.latitude,
        lng: chickens_gang.longitude,
        icon: chickenicon
        # infoWindow: { content: render_to_string(partial: "/chickens_gangs/map_box", locals: { chickens_gang: chickens_gang }) }
      }
    end
  end

  def show
    @renting = Renting.new
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
    redirect_to chickens_gangs_pathx
  end


  def my_chicken_gangs
    @my_chicken_gangs = current_user.chickens_gangs
    @all_rentings = Renting.all
    authorize @all_rentings
  end

  def my_bookings
    @my_bookings = current_user.rentings
    authorize @my_bookings
  end

private

  def set_chickens_gang
    @chickens_gang = ChickensGang.find(params[:id])
    authorize @chickens_gang
  end

  def chickens_gang_params
    params.require(:chickens_gang).permit(:gang_name, :address, :breed, :capacity, :year_of_birth, :price, :photo )
  end

end
