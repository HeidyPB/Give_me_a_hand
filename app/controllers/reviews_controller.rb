class ReviewsController < ApplicationController
  def index
    @review = Review.all
  end

  def new
    @user = User.find(params[:user_id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = @user
    @review.save
    redirect_to user_path(@user)
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
