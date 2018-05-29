class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @chickens_gang = ChickensGang.find(params[:chickens_gang_id])
  end

  def create
    @review = Review.new
    @chickens_gang.review = @review
  end



  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
