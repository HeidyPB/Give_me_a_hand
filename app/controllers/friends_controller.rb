class FriendsController < ApplicationController
  def index
    @friends = User.where(friend: true)
  end

  def show
    @friend = User.find(params[:id])
    @reviews = @friend.reviews
  end

  def new
    @friend = User.new
    # authorize @friend
  end

  def create
    @friend = Friend.new(friend_params)
    @friend.user = current_user
    authorize @friend
    if @friend.save
      redirect_to friend_path(@friend), notice: 'friend was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
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
