class FriendsController < ApplicationController
  def index
    @friends = User.where(friend: true)
  end

  def show
    @friend = User.find(params[:id])
  end

  def new
    @friend = User.new
    # authorize @friend
  end

  # used to create new friend profile
  def update_user
    current_user.friend = true # user assigned as friend here
    # authorize current_user
    if current_user.update(user_params)
      redirect_to friend_path(current_user), notice: 'friend was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def edit
  #   @friend = current_user
  #   # raise
  # end

  # def update
  #   if current_user.update(user_params)
  #     redirect_to friend_path(current_user), notice: 'friend was successfully created.'
  #   else
  #     render :new, status: :unprocessable_entity
  #   end

    # @friend = current_user
    # @friend.friend = true # user assigned as friend here!
    # @friend.username = params[:username]
    # @friend.origin = params[:origin]
    # @friend.language = params[:language]
    # @friend.province = params[:province]
    # # authorize @friend
    # if @friend.save
    #   redirect_to friend_path(@friend), notice: 'friend was successfully created.'
    # else
    #   render :new, status: :unprocessable_entity
    # end
  # end

  private

  def user_params
    params.require(:user).permit(:username, :origin, :province, :category, :address)
  end

end
