class ReviewsController < ApplicationController
  # before_action :set_friend, only: %i[new create]
  # def show
  #   # @review = Review.find_by_id(params[:id])
  # end

  def new
    @review = Review.new
    @friend = User.find(params[:id])
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @friend = User.find(params[:id])
    @review.friend = @friend
    if @review.save
      redirect_to friend_path(@friend), notice: "thanks for your review"
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  # def set_friend
  #   @friend = friend.find(params[:friend_id])
  # end

  def friends
    @friends = User.where(friend: true)
  end

  def review_params
    params.require(:review).permit(:commentary, :rating)
  end
end
