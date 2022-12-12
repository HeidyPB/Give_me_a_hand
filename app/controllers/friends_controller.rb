class FriendsController < ApplicationController
  def index
    @friends = User.where(friend: true)
    # raise
  end

  def show
    @friend = User.find(params[:id])
    @reviews = @friend.reviews
  end

  def new
    # @friend = User.new
    # authorize @friend
  end

  # used to create new friend profile
  def update_user
    ActiveRecord::Base.transaction do
      current_user.friend = true # user assigned as friend here
      current_user.update!(user_params)
      # authorize current_user
      @categories = Category.where(id: params[:user][:category_ids])
      @categories.each do |category|
        UserCategory.create!(
          category: category,
          user: current_user
        )
      end

      @spoken_languages = SpokenLanguage.where(id: params[:user][:spoken_language_ids])
      @spoken_languages.each do |spoken_language|
        UserSpokenLanguage.create!(
          spoken_language: spoken_language,
          user: current_user
        )
      end

      redirect_to friend_path(current_user), notice: 'friend was successfully created.'
    end
  rescue ActiveRecord::RecordInvalid
    render :new, status: :unprocessable_entity, notice: 'Something went wrong!'
  end

  # Edit user's profile page
  def edit
    @friend = current_user
  end

  def update
    if current_user.update(user_params)
      redirect_to friend_path(current_user), notice: 'friend was successfully updated.'
    else
      render :new, status: :unprocessable_entity
    end
  end

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
    params.require(:user).permit(:username, :origin, :province, :category, :address, :photo)
  end
end
