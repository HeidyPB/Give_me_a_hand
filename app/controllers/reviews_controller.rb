class ReviewsController < ApplicationController
  # before_action :set_friend, only: %i[new create]

  def new
    # @friend = Friend.find_by_id(params[:friend_id])
    @review = Review.new
  end

  def show
    @review = Review.find_by_id(params[:id])
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.save
    redirect_to friend_path(@friend)
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
