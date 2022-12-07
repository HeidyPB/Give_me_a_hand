class ReviewsController < ApplicationController
  # before_action :set_restaurant, only: %i[new create]

  def new
    @user = User.find_by_id(params[:user_id])
    @review = Review.new
  end

  def show
    @review = Review.find_by_id(params[:id])
  end

  def create
    @review = Review.new(review_params)
    @review.user = @user
    @review.save!
    redirect_to review_path(@review)
  end

  private

  # def set_user
  #   @user = User.find(params[:user_id])
  # end

  def review_params
    params.require(:review).permit(:commentary, :rating)
  end
end
