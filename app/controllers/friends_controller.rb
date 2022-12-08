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

  def create
    @friend = current_user
    @friend.friend = true # user assigned as friend here!
    @friend.username = params[:username]
    @friend.origin = params[:origin]
    @friend.language = params[:language]
    @friend.province = params[:province]
    # authorize @friend
    if @friend.save
      redirect_to friend_path(@friend), notice: 'friend was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @friend.update(friend_params)
      redirect_to friend_path(@friend)
    else
      render :edit
    end
  end

  def destroy
    @friend.destroy
    redirect_to friends_path(@friend)
  end

  private

  def set_friend
    @friend = Friend.find(params[:id])
    authorize @friend
  end

  def friend_params
    params.require(:friend).permit(:username, :origin, :province, :address, :language, :category, :photo)
  end

end
