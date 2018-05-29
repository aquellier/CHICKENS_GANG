class ReviewsController < ApplicationController
  #before_action :set_review, only: [:show, :destroy, :edit, :update, :booking]
  skip_before_action :authenticate_user!, only: [ :new, :create]
  def new
    @chickens_gang = ChickensGang.find(params[:chickens_gang_id])
    @review = Review.new
    authorize @review
    authorize @chickens_gang
  end

  def create
    @review = Review.new(review_params)
    @chickens_gang = ChickensGang.find(params[:chickens_gang_id])
    @user = current_user.id
    @review.user_id = @user
    @chickens_gang.reviews << @review
    if @review.save
      redirect_to chickens_gang_path(@chickens_gang)
    else
      render :new
    end
    authorize @chickens_gang
    authorize @review
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

  def set_review
    @review = Review.find(params[:id])
    authorize @review
  end
end
